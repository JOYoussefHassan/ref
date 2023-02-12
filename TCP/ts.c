/*
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/socket.h>

#include <netinet/in.h>
#include <arpa/inet.h>

int main(void)
{
	char message[256];

	int server_socket = socket(AF_INET, SOCK_STREAM, 0);
	if (server_socket < 0)
		printf("error in socket\n");

	struct sockaddr_in server_address, client_address;
	server_address.sin_family	= AF_INET;
	server_address.sin_port	= htons(9002);
	server_address.sin_addr.s_addr = inet_addr("127.0.0.1");

	int server_bind = bind(server_socket, (struct sockaddr *) &server_address, sizeof(server_address));
	if (server_bind < 0)
		printf("error in bind\n");

	int server_listen = listen(server_socket, 20);
	if (server_listen < 0)
		printf("error in listen\n");

	int accept_status = accept(server_socket, NULL, NULL);
	if (accept_status < 0)
		printf("error in accept\n");

	recv(server_socket, &message, sizeof(message), 0);
	printf("The response is \\ %s\n", message);

	return 0;
}
*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/socket.h>

#include <netinet/in.h>
#include <arpa/inet.h>

int main(void)
{
	// data
	char client_response[256];

	// create socket
	int server_socket = socket(AF_INET, SOCK_STREAM, 0);

	// specify address
	struct sockaddr_in server_address;
	server_address.sin_family		= AF_INET;
	server_address.sin_port		= htons(9002);
	server_address.sin_addr.s_addr 	= inet_addr("192.168.1.5");

	// bind & listen in server only
	bind(server_socket, (struct sockaddr *) &server_address, sizeof(server_address));
	listen(server_socket, 5);

	// connect (accept)
	int acception_status = accept(server_socket, NULL, NULL);

	// client response
	scanf("%s", client_response);
	send(acception_status, client_response, sizeof(client_response), 0);

	// close
	close(server_socket);

	return 0;
}
