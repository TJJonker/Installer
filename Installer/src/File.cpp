#include "File.h"
#include <fstream>
#include <sstream>
#include <iostream>

std::string File::Read(const char* filePath)
{
	try {
		std::ifstream fileStream(filePath);
		fileStream.exceptions(std::ifstream::failbit | std::ifstream::badbit);

		if (!fileStream.is_open()) { 
			std::cout << "Failed to open file." << std::endl;
			return {}; 
		}

		std::stringstream resultStream; 
		resultStream << fileStream.rdbuf(); 

		return resultStream.str();
	}
	catch (std::ifstream::failure e) {
		std::cout << "File not read succesfully." << std::endl;
		return {};
	}
}

bool File::Write(const char* filePath, const char* data)
{
	try {
		std::ofstream fileStream(filePath, std::ios::out | std::ios::trunc);
		fileStream.exceptions(std::ofstream::failbit | std::ofstream::badbit);

		if (!fileStream.is_open()) {
			std::cout << "Failed to open file." << std::endl;
			return false;
		}

		fileStream << data;
		fileStream.close(); 

		return true; 
	}
	catch (const std::ofstream::failure& e) {
		std::cout << "File not written succesfully." << std::endl;
		return false;
	}
}