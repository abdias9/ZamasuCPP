#include <gtkmm-2.4/gtkmm.h>
#include <iostream>
#include "Zamasu/ZamasuClient.h"

class Win : public Gtk::Window {
	private: 
		Zamasu::Client *client;
		Gtk::Entry *edt, *edtsync;
	
	public:
		Win() : Gtk::Window() {
			resize(300, 150);
	
			Gtk::VBox *vbox = new Gtk::VBox();
			edt = new Gtk::Entry();
			edtsync = new Gtk::Entry();
			
			edt->signal_changed().connect(sigc::mem_fun(*this, &Win::on_edt_change));
	
			vbox->add(*edt);
			vbox->add(*edtsync);
			add(*vbox);
			show_all();
			
			client = new Zamasu::Client((char*)"localhost", 9009);
			client->start_recv_thread();
			//sigc::connection Glib::SignalTimeout::connect(const sigc::slot<bool>& slot, unsigned int interval, int priority = Glib::PRIORITY_DEFAULT);
			sigc::slot<bool> my_slot = sigc::bind(sigc::mem_fun(*this,
				&Win::timeout), 0);
			sigc::connection conn = Glib::signal_timeout().connect(my_slot,
				1000);
		}
		
		void on_edt_change() {
			client->set_string("texto", edt->get_text());
		}
		
		bool timeout(int time_number) {
			if (client->attributes_loaded())
				edtsync->set_text(client->get_attrib("texto")->as_string());
			return true;
		}
};