#ifndef CLIENTINFO_INCLUDED
#define CLIENTINFO_INCLUDED

#include <iostream>
#include <cstring>

namespace Zamasu {
	class ClientInfo {
		private:
			unsigned long int id;
			const char* hostname;
			unsigned short port;
			static unsigned long id_count;
			
			
		public:
			ClientInfo(const char* hostname, unsigned short port);
			void set_hostname(const char* hostname);
			const char* get_hostname();
			void set_port(unsigned short port);
			unsigned short get_port();
			bool operator==(ClientInfo *clientInfo);
			static unsigned long get_id_count() {
				return id_count;
			}
			
	};
}

#endif