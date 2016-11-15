#ifndef ZAMASUSERVER_INCLUDED
#define ZAMASUSERVER_INCLUDED

#include "UDPSocket.h"
#include "ClientInfo.h"
#include "Attribute.h"
#include <vector>
#include <map>

namespace Zamasu {
	class Server {
		public:
			Server(unsigned short port, size_t buffsize = 1024);
			void send(std::string message);
			void run();
			
		private: 
			UDPSocket *sin, *sout;
			std::vector<ClientInfo*> clients;
			std::map<std::string, Attribute*> hash;
			size_t buffsize;
		
			void append_client(ClientInfo *clientInfo);
			void recv();
			void sync();
			void process(std::string message);
	};
}

#endif