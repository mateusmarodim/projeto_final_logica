import socket, time, msvcrt
from threading import Thread

BUFFER_SIZE = 1024
HOST = "0.0.0.0"
PORT = 80

class MyServer:
    def __init__(self, host=HOST, port=PORT):
        serversocket = socket.socket()
        serversocket.bind((host, port))
        print("Waiting for connection at:", host, port)
        serversocket.listen(1)
        self.socket = serversocket
        clientsocket, addr = serversocket.accept()
        self.client = (clientsocket, addr)
        print("Connected in %s" % str(addr))
        self.next_msg = "\0"
        self.thread = None
        self.input_thread = None
        self.pressed = None

    def send_msg(self, msg):
        self.client[0].send(msg.encode('utf-8'))

    def get_msg(self, buffer_size=BUFFER_SIZE):
        return self.client[0].recv(buffer_size)

    def send_msg_async(self, msg):
        print("Preparando pra enviar:", msg)
        self.next_msg = msg

    def setup_thread(self):
        if self.thread != None or self.input_thread != None:
            return
        self.thread = Thread(target=self._thread_loop, daemon=True)
        self.thread.start()
        self.input_thread = Thread(target=self._input_thread_loop, daemon=True)
        self.input_thread.start()

    def _thread_loop(self):
        while True:
            self.send_msg(self.next_msg)
            if (self.next_msg != "\0"):
                msg = self.get_msg()
                while (msg[:3] != b"END"):
                    print(msg)
                    msg = self.get_msg()
            self.next_msg = "\0"
            time.sleep(0.1)

    def _input_thread_loop(self):
        while True:
            self.pressed = input()
            time.sleep(1)

    def get_pressed(self):
        pressed = self.pressed
        self.pressed = None
        return pressed
        
    

if __name__ == "__main__":
    s = MyServer()

    while True:
        msg = s.get_msg()
        if msg.decode('utf-8') == "Placa online":
            break
    
    print("Thread setup")
    print("Digite o sentido e o tempo de ativação do motor: (ex (horário 15): h 15 | (anti-horário 15): ah 15")
    s.setup_thread()
    
    while True:
        pressed = s.get_pressed()
        if (pressed):
            s.send_msg_async(pressed + "\0")
        time.sleep(1)
            
            
        
        
    
