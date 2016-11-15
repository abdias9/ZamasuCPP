#ifndef UTILS_H_INCLUDED
#define UTILS_H_INCLUDED

#include <iostream>
#include <string>
#include <cstring>
#include <vector>

namespace Zamasu {
	namespace Utils {
		std::vector<std::string> split(std::string str, std::string c);
		size_t char_count(std::string str, char c);
	}
}

#endif