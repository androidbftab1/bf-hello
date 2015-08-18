all:: hello

hello: hello.c
	gcc -o hello -static hello.c
	strip hello
