all: message.o client.o server.o server client

message.o: message.c
	gcc -c  message.c -o message.o

client.o: client.c
	gcc -c  client.c -o client.o

server.o: server.c
	gcc -c  server.c -o server.o

server: message.o server.o
	gcc -g message.o server.o -o server 

client: message.o client.o
	gcc -g message.o client.o -o client
	

clean:
	rm *.o
	rm *.so
	rm *.a
	rm client
	rm server
