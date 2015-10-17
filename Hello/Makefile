all: hello

hello: hello.o
	g++ hello.o -o hello
hello.o: Hello.cpp
	g++ -c Hello.cpp
clean:
	rm -rf *o hello