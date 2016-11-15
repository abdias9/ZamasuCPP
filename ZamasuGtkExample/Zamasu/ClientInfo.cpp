#include "ClientInfo.h"

using namespace Zamasu;

unsigned long ClientInfo::id_count = 1;

ClientInfo::ClientInfo(const char* hostname, unsigned short port) {
	this->hostname = hostname;
	this->port = port;
	this->id = ClientInfo::id_count++;
}

void ClientInfo::set_hostname(const char* hostname) {
	this->hostname = hostname;
}

const char* ClientInfo::get_hostname() {
	return this->hostname;
}

void ClientInfo::set_port(unsigned short port) {
	this->port = port;
}

unsigned short ClientInfo::get_port() {
	return this->port;
}

bool ClientInfo::operator==(ClientInfo *clientInfo) {
	return (strcmp(this->hostname, clientInfo->get_hostname()) == 0 && this->port == clientInfo->get_port());
}