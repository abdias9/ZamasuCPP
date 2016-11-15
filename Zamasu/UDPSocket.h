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
	/// @brief Basic class to send and receive std::string's with UDP protocol.
	class UDPSocket {
		protected:
			/// @brief AF_INET/DGRAM socket.
			int sock;
			/// @brief Port value.
			unsigned short port;
			/// @brief Local sockadd_in structure.
			sockaddr_in addr;
		
		public:
			/// @brief Main constructor.
			UDPSocket();
			/** 
			 *@brief Bind a port to start UDP operations.
			 * 	@return True if succeed.
			 */
			bool bind(unsigned short port);
			/**
			 * @brief Send message over UDP protocol to hostname.
			 * @param message Message to be sended.
			 * @param hostname Destination hostname.
			 * @param port Destination port.
			 * @return True if succeed.
			 */
			bool send(const char* message, const char* hostname, unsigned short port);
			/**
			 * @brief Receive a Zamasu::Message over UDP protocol with a maximum buff size.
			 * @param buffsize Maximum message size.
			 * @return A new Zamasu::Message instance.
			 */
			Message recvfrom(size_t buffsize);
	};
}

#endif