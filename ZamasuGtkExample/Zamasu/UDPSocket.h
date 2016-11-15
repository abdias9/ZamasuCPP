#ifndef UDPSOCKET_DEFINED
#define UDPSOCKET_DEFINED

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <cstdio>
#include <unistd.h>
#include <errno.h>
#include <cstring>
#include <cstdlib>
#include <iostream>
#include "UDPMessage.h"

namespace Zamasu {
	class UDPSocket {
		protected:
			int sock;
			unsigned short port;
			sockaddr_in addr;
		
		public:
			UDPSocket();
			bool bind(unsigned short port);
			bool send(const char* message, const char* hostname, unsigned short port);
			Message recvfrom(size_t buffsize);
	};
}

#endif