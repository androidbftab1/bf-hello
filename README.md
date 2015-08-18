# bf-hello
hello-world with Docker (busybox)

build.sh:  
```build.sh
docker build -t bf-hello .  
```

hello.c:  
```hello.c
#include<stdio.h>  
int main() {  
	printf("Hello World!!\n");  
	return 0;  
}  
```

Makefile:
```Makefile
all:: hello  

hello: hello.c  
	gcc -o hello -static hello.c  
	strip hello  
```
Dockerfile:
```Dockerfile
FROM busybox  
COPY ./hello /hello  
CMD ["/hello"]
```

ref. Markdown for github README.md  
<https://en.wikipedia.org/wiki/Markdown>  

<android.bf.tab1@gmail.com>  


