#include "UDPSocket.h"

using namespace Zamasu;
UDPSocket::UDPSocket() {
	if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1) {
		perror("[ERROR] Can't create socket!");
		exit(1);
	}
}

bool UDPSocket::bind(unsigned short port) {
	this->port = port;
	addr.sin_family = AF_INET;
	addr.sin_port = htons(port);
	addr.sin_addr.s_addr = INADDR_ANY;
	bzero(&(addr.sin_zero), 8);
	return (::bind(sock, (sockaddr*) &addr, sizeof(addr)) != -1);
}

bool UDPSocket::send(const char* message, const char* hostname, unsigned short port) {
	sockaddr_in remote_addr;
	hostent *host;
	host = (hostent*) gethostbyname((char*)hostname);
	remote_addr.sin_family = AF_INET;
	remote_addr.sin_port = htons(port);
	remote_addr.sin_addr = *((in_addr*) host->h_addr);
	bzero(&(remote_addr.sin_zero), 8);
	return (::sendto(sock, message, strlen(message), 0, (sockaddr*) &remote_addr, sizeof(sockaddr)) != -1);
}

Message UDPSocket::recvfrom(size_t buffsize) {
	int bytescount;
	socklen_t remote_addr_len;
	char recv_data[buffsize];
	sockaddr_in remote_addr;
	bytescount = ::recvfrom(sock, recv_data, buffsize, 0, (sockaddr*) &remote_addr, &remote_addr_len);
	char *ip = inet_ntoa(remote_addr.sin_addr);
	//recv_data[bytescount] = '\0';
	char res[bytescount + 1];
	strncpy(res, recv_data, bytescount);
	res[bytescount] = '\0';
	std::cerr << "[RECV-GLOBAL] "<< bytescount << " " << res << std::endl;
	return Message(ip, res);
}

			
	
