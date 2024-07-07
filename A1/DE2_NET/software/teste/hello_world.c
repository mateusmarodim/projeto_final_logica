#include <stdio.h>
#include "io.h"
#include "system.h"
#include <unistd.h>

int main()
{
	printf("starting\n");
	while (1) {
		//ANTIHORARIO
		IOWR(0, 1, 15);

		IOWR(0, 3, 0);
		int j = IORD(0, 3);
		IOWR(0x00000020,0,1);

		printf("First j = %d\n", j);

		while(j != 0){
			usleep(1000000);
			j = IORD(0, 3);
			printf("j = %d\n", j);
		}
		IOWR(0x00000020,0,0);
		printf("switching\n");

		IOWR(0, 1, 0);

		//HORARIO

		IOWR(0, 0, 15);

		IOWR(0, 2, 0);
		//usleep(3000000);
		int i = IORD(0, 2);
		IOWR(0x00000010,0,1);
		printf("First i = %d\n", i);

		while(i != 0){
			usleep(1000000);
			i = IORD(0, 2);
			printf("i = %d\n", i);
		}
		IOWR(0x00000010,0,0);

		IOWR(0, 0, 0);

		printf("end iteration\n");
	}

  	return 0;
}
