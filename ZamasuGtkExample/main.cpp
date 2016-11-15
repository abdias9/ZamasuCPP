#include <gtkmm-2.4/gtkmm.h>
#include "Zamasu/ZamasuClient.h"
#include "src/Win.cpp"

int main (int argc, char *argv[])
{
    Gtk::Main kit(argc, argv);

	Win *win = new Win();
	
    Gtk::Main::run(*win);

    return 0;
}
