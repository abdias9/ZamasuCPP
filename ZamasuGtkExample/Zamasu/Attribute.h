#ifndef ATTRIBUTE_H_INCLUDED
#define ATTRIBUTE_H_INCLUDED

#include <iostream>
#include <string>

namespace Zamasu {
	class Attribute {
		private:
			short type;
			std::string value;
			
		public:
			Attribute(int value);
			Attribute(double value);
			Attribute(std::string value);
			Attribute(bool value);
			Attribute(short type, std::string value);
			
			void increment(double value);
			
			int as_int();
			double as_double();
			std::string as_string();
			bool as_bool();
			float as_float();
			
			short get_type();
			
			enum Type {
				INTEGER = 0, DOUBLE, STRING, BOOLEAN
			};
	};
}

#endif