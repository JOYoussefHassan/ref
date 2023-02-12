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

	int client_socket = socket(AF_INET, SOCK_STREAM, 0);
	if (client_socket < 0)
		printf("error in socket\n");

	struct sockaddr_in server_address, client_address;
	server_address.sin_family	= AF_INET;
	server_address.sin_port	= htons(9002);
	server_address.sin_addr.s_addr = inet_addr("127.0.0.1");

	int connect_status = connect(client_socket, (struct sockaddr *) &server_address, sizeof(server_address));
	if (connect_status < 0)
		printf("error in conect\n");

	scanf("%s", message);
	send(connect_status, message, sizeof(message), 0);

	return 0;
}
*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include <sys/types.h>
#include <sys/socket.h>

#include <netinet/in.h>
#include <arpa/inet.h>

int main(void)
{
	// data
	char server_response[256];

	// create socket
	int network_socket = socket(AF_INET, SOCK_STREAM, 0);

	// specify an address
	struct sockaddr_in server_address;
	memset(&server_address, 0, sizeof(server_address));
	server_address.sin_family		= AF_INET;
	server_address.sin_port		= htons(9002);
	server_address.sin_addr.s_addr 	= inet_addr("127.0.0.1");
	int len_address = sizeof(server_address);

	// connect (connect)
	int connection_status = connect(network_socket, (struct sockaddr *) &server_address, sizeof(server_address));

	// server response
	recv(network_socket, &server_response, sizeof(server_response), 0);
	printf("The response is \\ %s\n", server_response);

	// close
	close(network_socket);

	return 0;
}
