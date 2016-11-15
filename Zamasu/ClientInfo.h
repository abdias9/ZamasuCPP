#ifndef CLIENTINFO_INCLUDED
#define CLIENTINFO_INCLUDED

#include <iostream>
#include <cstring>

namespace Zamasu {
    /// \brief Basic Class with common attributes for Clients that will be communicating with Server instances.
	class ClientInfo {
		protected:
			/// @brief ID on server.
			unsigned long int id; 
			/// @brief Client's hostname
			const char* hostname;
			/// @brief Client's port 
			unsigned short port; 
			/// @brief ClientInfo instance counter
			static unsigned long id_count; 
			
			
		public:
			/**
			* @param hostname (ex.: "localhost")
			* @param port (ex.: 9009)
			*/
			ClientInfo(const char* hostname, unsigned short port);
			/**
			* @brief Set the this->hostname attribute.
			*/
			void set_hostname(const char* hostname);
			/**
			 * @brief Return ClientInfo::hostname attribute.
			 * @return Hostname value
			 */
			const char* get_hostname();
			/**
			 * @brief Set the ClientInfo::port attribute.
			 */
			void set_port(unsigned short port);
			/**
			 * @brief Return ClientInfo::port attribute.
			 * @return Port value
			 */
			unsigned short get_port();
			/**
			 * @brief Compares to ClientInfo instances and return true if hostname and port are the same.
			 * @return True if the instances have same attributes.
			 */
			bool operator==(ClientInfo *clientInfo);
			/**
			 * @brief Get the number of ClientInfo instances.
			 * @return Number of instances.
			 */
			static unsigned long get_id_count() {
				return id_count;
			}
			
	};
}

#endif