#include "ZamasuClient.h"

using namespace Zamasu;

Client::Client(char* host, unsigned short port) {
 	server_host = host;
	server_port = port;
	sout = new UDPSocket();
	sin = new UDPSocket();
	sin->bind(9010);
}

void Client::set_string(std::string key, std::string value) {
	sout->send(("[set-attrib] " + key + "=" + value + "=2").c_str(), server_host, server_port);
}

void Client::set_double(std::string key, double value) {
	sout->send(("[set-attrib] " + key + "=" + std::to_string(value) + "=" + std::to_string(Attribute::Type::DOUBLE)).c_str(), server_host, server_port);
}

void Client::set_bool(std::string key, bool value) {
	std::string bv = (value ? "true" : "false");
	sout->send(("[set-attrib] " + key + "=" + bv + "=" + std::to_string(Attribute::Type::BOOLEAN)).c_str(), server_host, server_port);
}

void Client::increment_attrib(std::string key, std::string increment) {
	sout->send(("[increment-attrib] " + key + "=" + increment).c_str(), server_host, server_port);
}

Attribute* Client::get_attrib(std::string key) {
	return hash[key];
}

std::map<std::string, Attribute*> Client::get_attributes() {
	return hash;
}

void Client::recv() {
	while (true) {
		Message message = sin->recvfrom(1024);
		std::cerr << "[RECV] " << message.get_message() << " from " << message.get_host() << std::endl;
		process(message.get_message());
	}
}

bool Client::attributes_loaded() {
	return (hash.size() != 0);
}

void Client::start_recv_thread() {
	pthread_t thread_id;
	pthread_create(&thread_id, NULL, &Client::call_recv, this);
}

void Client::process(std::string message) {
	std::vector<std::string> cmd = Utils::split(message, " ");
	std::string cmdname = cmd[0];
	
	if (cmdname == "[set-attrib]") {
		std::cerr << "SETAT";
		for (size_t i = 1; i < cmd.size(); i++) {
			std::string key = Utils::split(cmd[i], "=")[0];
			std::string value = Utils::split(cmd[i], "=")[1];
			short type = atoi(Utils::split(cmd[i], "=")[2].c_str());
			Attribute *attr = new Attribute(type, value);
			hash[key] = attr;
			sync();
		}
	}
}