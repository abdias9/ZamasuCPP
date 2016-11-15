#include "Utils.h"

size_t Zamasu::Utils::char_count(std::string str, char c) {
	size_t count = 0;
	for (size_t i = 0; i != str.length(); i++)
		if (str[i] == c)
			count++;
	return count;
}

std::vector<std::string> Zamasu::Utils::split(std::string str, std::string c) {
	std::vector<std::string> res;
	bool ended = false;
	if (char_count(str, c[0]) == 0)
		return res;
		
	while (!ended) {
		std::string word = str.substr(str.find_first_not_of(c), str.find_first_of(c) - str.find_first_not_of(c));
		res.push_back(word);
		str = str.substr(word.length() + 1);
		if (char_count(str, c[0]) == 0) {
			res.push_back(str);
			ended = true;
		}
	}
	
	return res;
}
	


