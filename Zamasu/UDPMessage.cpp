#include "UDPMessage.h"

using namespace Zamasu;

Message::Message(std::string host, std::string message) {
	this->host = host;
	this->message = message;
}

std::string Message::get_host() {
	return this->host;
}

std::string Message::get_message() {
	return this->message;
}