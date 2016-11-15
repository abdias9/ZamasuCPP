#include "ZamasuServer.h"

#include "UDPMessage.h"
#include "Utils.h"

using namespace Zamasu;

typedef std::map<std::string, Attribute*>::iterator attr_it;
typedef std::vector<ClientInfo*>::iterator client_it;

Server::Server(unsigned short port, size_t buffsize) {
	this->buffsize = buffsize;
	sin = new UDPSocket();
	sin->bind(port);
	sout = new UDPSocket();
}

void Server::send(std::string message) {
	for (client_it it = clients.begin(); it != clients.end(); it++)
		sout->send(message.c_str(), (*it)->get_hostname(), (*it)->get_port());
}

void Server::run() {
	while (true) {
		recv();
	}
}

void Server::append_client(ClientInfo *clientInfo) {
	for (client_it it = clients.begin(); it != clients.end(); it++)
		if ((**it) == (clientInfo))
			return;
	clients.push_back(clientInfo);
	std::cerr << "[INFO] Novo cliente adicionado " << clientInfo->get_hostname() << ":" << clientInfo->get_port() << std::endl;
}

void Server::recv() {
	Message message = sin->recvfrom(buffsize);
	//std::cerr << "[RECV] " << message.get_message() << " from " << message.get_host() << std::endl;
	append_client(new ClientInfo(message.get_host().c_str(), 9010));
	process(message.get_message());
}

void Server::sync() {
	std::string to_send = "[set-attrib]";
	for (attr_it it = hash.begin(); it != hash.end(); it++) 
		to_send += " " + (*it).first + "=" + (*it).second->as_string() + "=" + std::to_string((*it).second->get_type());
	std::cerr << "[SEND] " << to_send << std::endl;
	send(to_send);			
}

void Server::process(std::string message) {
	std::vector<std::string> cmd = Utils::split(message, " ");
	std::string cmdname = cmd[0];
	
	if (cmdname == "[set-attrib]")
		for (size_t i = 1; i < cmd.size(); i++) {
			std::string key = Utils::split(cmd[i], "=")[0];
			std::string value = Utils::split(cmd[i], "=")[1];
			short type = atoi(Utils::split(cmd[i], "=")[2].c_str());
			Attribute *attr = new Attribute(type, value);
			hash[key] = attr;
			sync();
		}
	else if (cmdname == "[increment-attrib]") {
		for (size_t i = 1; i < cmd.size(); i++) {
			std::string key = Utils::split(cmd[i], "=")[0];
			double increment = atof(Utils::split(cmd[i], "=")[1].c_str());
			hash[key]->increment(increment);
			sync();
		}
	}
	
	 for (attr_it it = hash.begin(); it != hash.end(); it++)
		std::cerr << (*it).first << " -> " << (*it).second->as_string() << std::endl;
}