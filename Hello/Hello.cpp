#include <iostream>
using namespace std;

int main(int argc, char* argv[]) {
	// если передаем аргументы, то argc будет больше 1(в зависимости от кол-ва аргументов) 
	if (argc > 1) {
		cout << argv[1]<<endl;// вывод второй строки из массива указателей на строки(нумерация в строках начинается с 0 )
	} else {
		cout << "Not arguments" << endl;
        }  
    return 0;
}