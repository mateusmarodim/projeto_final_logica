/******************************************************************************
* Copyright (c) 2006 Altera Corporation, San Jose, California, USA.           *
* All rights reserved. All use of this software and documentation is          *
* subject to the License Agreement located at the end of this file below.     *
*******************************************************************************                                                                             *
* Date - October 24, 2006                                                     *
* Module - iniche_init.c                                                      *
*                                                                             *                                                                             *
******************************************************************************/

/******************************************************************************
 * NicheStack TCP/IP stack initialization and Operating System Start in main()
 * for Simple Socket Server (SSS) example. 
 * 
 * This example demonstrates the use of MicroC/OS-II running on NIOS II.       
 * In addition it is to serve as a good starting point for designs using       
 * MicroC/OS-II and Altera NicheStack TCP/IP Stack - NIOS II Edition.                                                                                           
 *      
 * Please refer to the Altera NicheStack Tutorial documentation for details on 
 * this software example, as well as details on how to configure the NicheStack
 * TCP/IP networking stack and MicroC/OS-II Real-Time Operating System.  
 */
  
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include "io.h"
#include <fcntl.h>
/* MicroC/OS-II definitions */
#include "../projeto_final_bsp/HAL/inc/includes.h"

#include "../projeto_final_bsp/system.h"

#include "./dm9000a.h"

/* Simple Socket Server definitions */
#include "simple_socket_server.h"
#include "alt_error_handler.h"

/* Nichestack definitions */
#include "../projeto_final_bsp/iniche/src/h/nios2/ipport.h"
#include "../projeto_final_bsp/iniche/src/h/tcpport.h"
#include "../projeto_final_bsp/iniche/src/h/libport.h"
#include "../projeto_final_bsp/iniche/src/nios2/osport.h"
#include "../projeto_final_bsp/iniche/src/ipmc/u_mctest.c"
#include "./basic_io.h"
#include "./LCD.h"

/* Definition of task stack for the initial task which will initialize the NicheStack
 * TCP/IP Stack and then initialize the rest of the Simple Socket Server example tasks. 
 */
OS_STK    SSSInitialTaskStk[TASK_STACKSIZE];

/* Declarations for creating a task with TK_NEWTASK.  
 * All tasks which use NicheStack (those that use sockets) must be created this way.
 * TK_OBJECT macro creates the static task object used by NicheStack during operation.
 * TK_ENTRY macro corresponds to the entry point, or defined function name, of the task.
 * inet_taskinfo is the structure used by TK_NEWTASK to create the task.
 */
TK_OBJECT(to_ssstask);
TK_ENTRY(SSSSimpleSocketServerTask);

struct inet_taskinfo ssstask = {
      &to_ssstask,
      "simple socket server",
      SSSSimpleSocketServerTask,
      4,
      APP_STACK_SIZE,
};

/* SSSInitialTask will initialize the NicheStack
 * TCP/IP Stack and then initialize the rest of the Simple Socket Server example 
 * RTOS structures and tasks. 
 */
void SSSInitialTask(void *task_data)
{
	printf("\n\nOK: projeto carregado!\n\n\n");
	INT8U error_code;

	/*
	* Initialize Altera NicheStack TCP/IP Stack - Nios II Edition specific code.
	* NicheStack is initialized from a task, so that RTOS will have started, and
	* I/O drivers are available.  Two tasks are created:
	*    "Inet main"  task with priority 2
	*    "clock tick" task with priority 3
	*/
	alt_iniche_init();
	netmain();

	/* Wait for the network stack to be ready before proceeding.
	* iniche_net_ready indicates that TCP/IP stack is ready, and IP address is obtained.
	*/
	while (!iniche_net_ready)
		TK_SLEEP(1);

	/* Now that the stack is running, perform the application initialization steps */

	/* Application Specific Task Launching Code Block Begin */

	printf("\nSimple Socket Server starting up\n");

	// C�digo come�a aqui -----------------------------------------------------------------------
	struct sockaddr_in sa;
	int SocketFD;

	LCD_Init();
	char Text[16] = "Teste";
	LCD_Show_Text(Text);

	char buffer[1024];
	int port = 80;

	SocketFD = socket(AF_INET, SOCK_STREAM, 6);
	printf("Socket criado.\n");
	sa.sin_family = AF_INET;
	sa.sin_port = htons(port); // ALTERAR PORTA A SER UTILIZADA AQUI
	sa.sin_addr.s_addr = inet_addr("192.168.0.174");
	if (connect(SocketFD, (struct sockaddr *)&sa, sizeof sa) == -1) {
		perror("Connection failed.\n");
		printf("%s\n", strerror(errno));
		close(SocketFD);
		exit(EXIT_FAILURE);
	}

	msleep(1000);
	char msg[12]= "Placa online";
	if (send(SocketFD, msg, sizeof(msg), 0) < 0){
		perror("Send()");
		exit(EXIT_FAILURE);
	} else{
		printf("Msg enviada: Placa online\n");
	}


	int i, m1, m2, s1, s2;
	unsigned long long count = 0;
	i = 0;
	char buf[1024];
	char cmd[16] = "";
	char horario[16] = "h\0";
	char anti_horario[16] = "ah\0";
	char invalido[32] = "Comando invalido\n\0";
	char sem_duracao[32] = "Digite uma duracao\n\0";
	char blank[16] = "\0";

	while(1){
		// Verifica valor da contagem e mostra do display

		// Recebe cmd
		if (recv(SocketFD, buf, sizeof(buf), 0) < 0) {
			perror("Recv()");
			exit(EXIT_FAILURE);
		} else {
			// stcmp retorna 0 se strings sao iguais
			if (strcmp(buf, blank)) {// imprime s� se n�o for mensagem vazia
				printf("Msg recebida: %s\n", buf);
				memcpy(cmd, buf, 16 * sizeof(char));

				char* sentido = strtok(cmd, " ");
				int reg_addr, cron_addr;
				unsigned long pio_addr;

				if (!strcmp(sentido, horario)) {
					printf("Sentido: %s\n", sentido);
					reg_addr = 0;
					cron_addr = 2;
					pio_addr = 0x00000010;
				} else if (!strcmp(sentido, anti_horario)) {
					printf("Sentido: %s\n", sentido);
					reg_addr = 1;
					cron_addr = 3;
					pio_addr = 0x00000020;
				} else {
					if(send(SocketFD, invalido, sizeof(invalido), 0) < 0) {
						printf("Enviado: %s", invalido);
					}
				}

				char* duracao = strtok(NULL, " ");

				if (!strcmp(duracao, blank)) {
					if (send(SocketFD, sem_duracao, sizeof(sem_duracao), 0) < 0){
						printf("Enviado: %s", sem_duracao);
					}
				}

				int duracao_num = atoi(duracao);

				IOWR(0, reg_addr, duracao_num);
				IOWR(0, cron_addr, 0);
				int i = IORD(0, cron_addr);
				IOWR(pio_addr, 0, 1);
				printf("First i = %d\n", i);

				while (i != 0) {
					usleep(1000000);
					i = IORD(0, cron_addr);
					char str[16];
					int length = snprintf(str, sizeof(str), "Tempo: %d\r\n\0", i);
					printf("Enviando: %s - %d\n", str, length);
					if (send(SocketFD, str, length, 0) < 0) {
						printf("Enviado: %s\n", str);
					}

				}
				char str[32] = "END\0";

				if (send(SocketFD, str, strlen(str), 0)< 0) {
					printf("Enviado: %s\n", str);
				}

				IOWR(pio_addr, 0, 0);
				IOWR(0, reg_addr, 0);
			}
		}

		msleep(100);
	}
}

/* Main creates a single task, SSSInitialTask, and starts task scheduler.
 */

int main (int argc, char* argv[], char* envp[])
{
  
  INT8U error_code;

  DM9000A_INSTANCE( DM9000A_0, dm9000a_0 );
  DM9000A_INIT( DM9000A_0, dm9000a_0 );

  /* Clear the RTOS timer */
  OSTimeSet(0);

  /* SSSInitialTask will initialize the NicheStack
   * TCP/IP Stack and then initialize the rest of the Simple Socket Server example
   * RTOS structures and tasks.
   */
  error_code = OSTaskCreateExt(SSSInitialTask,
                             NULL,
                             (void *)&SSSInitialTaskStk[TASK_STACKSIZE],
                             SSS_INITIAL_TASK_PRIORITY,
                             SSS_INITIAL_TASK_PRIORITY,
                             SSSInitialTaskStk,
                             TASK_STACKSIZE,
                             NULL,
                             0);
  alt_uCOSIIErrorHandler(error_code, 0);

  /*
   * As with all MicroC/OS-II designs, once the initial thread(s) and
   * associated RTOS resources are declared, we start the RTOS. That's it!
   */
  OSStart();
  
  while(1); /* Correct Program Flow never gets here. */

  return -1;
}
