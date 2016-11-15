#ifndef ZAMASU_CLIENT_INCLUDED
#define ZAMASU_CLIENT_INCLUDED

#include "Attribute.h"
#include "UDPSocket.h"
#include "UDPMessage.h"
#include "Utils.h"
#include <thread>
#include <map>

namespace Zamasu {
	class Client {
		private:
			std::map<std::string, Attribute*> hash;
			UDPSocket *sin, *sout;
			char* server_host;
			unsigned short server_port;
		
		public:
			Client(char* host, unsigned short port);
			void set_string(std::string key, std::string value);
			void set_double(std::string key, double value);
			void set_bool(std::string key, bool value);
			void increment_attrib(std::string key, std::string increment);
			Attribute* get_attrib(std::string key);
			std::map<std::string, Attribute*> get_attributes();
			void recv();
			bool attributes_loaded();
			void process(std::string message);
			void start_recv_thread();
			
			static void* call_recv(void* ptr) {
				Client* client = static_cast<Client*>(ptr);
				client->recv();
				return NULL;
			}
	};
}

#endif