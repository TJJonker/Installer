#include "File.h"
#include <iostream>

int main() {
	std::string file = File::Read("Hello.txt");

	std::cout << file << std::endl << std::endl;

	system("PAUSE");
}