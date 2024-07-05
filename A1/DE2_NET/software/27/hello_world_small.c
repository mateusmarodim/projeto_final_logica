/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */
#include <stdio.h>
#include "io.h"
#include "system.h"
#include "time.h"

int main()
{
	//HORARIO
	IOWR(0, 0, 15);

	IOWR(0, 2, 0);
	int i = IORD(0, 2);
	IOWR(0x00000010,0,1);

	while(i != 0){
		sleep(1);
		i = IORD(0, 2);
	}
	IOWR(0x00000010,0,0);

	
	//ANTIHORARIO
	IOWR(0, 1, 15);

	IOWR(0, 3, 0);
	int i = IORD(0, 3);
	IOWR(0x00000020,0,1);

	while(i != 0){
		sleep(1);
		i = IORD(0, 3);
	}
	IOWR(0x00000020,0,0);


  	return 0;
}
