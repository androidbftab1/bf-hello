# bf-hello
hello-world with Docker (busybox)


docker build -t bf-hello .  


hello.c:  
#include<stdio.h>  

int main() {  
	printf("Hello World!!\n");  
	return 0;  
}  

Makefile:  
all:: hello  

hello: hello.c  
	gcc -o hello -static hello.c  
	strip hello  

Dockerfile:  
FROM busybox  
COPY ./hello /hello  
CMD ["/hello"]  

