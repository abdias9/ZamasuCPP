#include <stdio.h>
#include "ZamasuServer.h"
#include "ZamasuClient.h"
#include "Constants.h"
#include "Utils.h"

#include <unistd.h>

using namespace Zamasu;

int main(int argc, char **argv)
{
	if (argc >= 2) {
		if (argv[1][0] == 's') {
			Server *server = new Server(9009);
			server->run();
		}
		
		if (argv[1][0] == 'c') {
			Client *client = new Client((char*)"localhost", 9009);
			client->start_recv_thread();
			client->set_double("var1", 3.5);
			usleep(1000 * 1000);
			std::cerr << client->get_attrib("var1")->as_string() << std::endl;
		}
	}

	return 0;
}
