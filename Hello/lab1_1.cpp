#include <string.h>
#include <stdio.h>
#include <ctype.h>
#include <iostream>

int main(int argc, char* argv[]) {
	float a, b, c;
	// если передаем аргументы, то argc будет больше 1(в зависимости от кол-ва аргументов) 
	if (argc != 0) {
		int argValue = atoi(argv[1]);
		if (argValue == 1) {
			std::cout << 7 << " " << 3 << " " << 1;		
		} else {
			std::cout << 7 << " " << 13 << " " << 16;	
		}
	} else {
		cout << "Not arguments" << endl;
        }  
    return 0;
}
