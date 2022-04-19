#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/socket.h>

#include <netinet/in.h>

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
	server_address.sin_addr.s_addr 	= INADDR_ANY;

	// bind & listen in server only
	bind(server_socket, (struct sockaddr *) &server_address, sizeof(server_address));
	listen(server_socket, 5);
	
	// connect (accept)
	int acception_status = accept(server_socket, NULL, NULL);

	// client response
	printf("message : ");
	scanf("%s", client_response);
	send(acception_status, client_response, sizeof(client_response), 0);

	// close
	close(server_socket);

	return 0;
}
