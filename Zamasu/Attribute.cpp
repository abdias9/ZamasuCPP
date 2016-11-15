#include "Attribute.h"

using namespace Zamasu;
Attribute::Attribute(int value) {
	this->value = std::to_string(value);
	this->type = Type::INTEGER;
}

Attribute::Attribute(double value) {
	this->value = std::to_string(value);
	this->type = Type::DOUBLE;
}
	
Attribute::Attribute(std::string value) {
	this->value = value;
	this->type = Type::STRING;
}

Attribute::Attribute(bool value) {
	this->value = (value ? "true" : "false");
	this->type = Type::BOOLEAN;
}

Attribute::Attribute(short type, std::string value) {
	this->type = type;
	this->value = value;
}
	
int Attribute::as_int() {
	if (type == Type::INTEGER || type == Type::DOUBLE)
		return (int)atof(value.c_str());
	return 0;
}

double Attribute::as_double() {
	if (type == Type::INTEGER || type == Type::DOUBLE)
		return atof(value.c_str());
	return 0;
}

std::string Attribute::as_string() {
		return value;
}

bool Attribute::as_bool() {
	if (type == Type::BOOLEAN)
		return (value == "true" ? true : false);
	return false;
}

void Attribute::increment(double value) {
	if (type == Type::INTEGER || type == Type::DOUBLE)
		this->value = std::to_string(atof(this->value.c_str()) + value);
}

short Attribute::get_type() {
	return this->type;
}

