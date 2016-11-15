#ifndef UDPMESSAGE_INCLUDED
#define UDPMESSAGE_INCLUDED

#include <iostream>

namespace Zamasu {
	class Message {
		private:
			std::string host;
			std::string message;
			
		public:
			Message(std::string host, std::string message);
			std::string get_host();
			std::string get_message();
	};
}

#endif