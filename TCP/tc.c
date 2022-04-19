#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/socket.h>

#include <netinet/in.h>

int main(void)
{
	// data
	char server_response[256];

	// create socket
	int network_socket = socket(AF_INET, SOCK_STREAM, 0);

	// specify an address
	struct sockaddr_in server_address;
	server_address.sin_family		= AF_INET;
	server_address.sin_port		= htons(9002);
	server_address.sin_addr.s_addr 	= INADDR_ANY;

	// connect (connect)
	int connection_status = connect(network_socket, (struct sockaddr *) &server_address, sizeof(server_address));

	// server response
	recv(network_socket, &server_response, sizeof(server_response), 0);
	printf("The response is \\ %s\n", server_response);

	// close
	close(network_socket);

	return 0;
}
