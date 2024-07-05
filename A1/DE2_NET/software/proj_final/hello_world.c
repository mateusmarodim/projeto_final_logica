#include <stdio.h>
#include "io.h"
#include "system.h"
#include <unistd.h>

int main()
{
	//HORARIO
	IOWR(0, 0, 15);

	IOWR(0, 2, 0);
	int i = IORD(0, 2);
	IOWR(0x00000010,0,1);

	while(i != 0){
		usleep(1000000);
		i = IORD(0, 2);
	}
	IOWR(0x00000010,0,0);


	//ANTIHORARIO
	IOWR(0, 1, 15);

	IOWR(0, 3, 0);
	int j = IORD(0, 3);
	IOWR(0x00000020,0,1);

	while(j != 0){
		usleep(1000000);
		j = IORD(0, 3);
	}
	IOWR(0x00000020,0,0);


  	return 0;
}
