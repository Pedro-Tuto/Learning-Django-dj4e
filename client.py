import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect(('127.0.0.1', 9000))
cmd = 'GET http://127.0.0.1/romeo.txt HTTP/1.0\r\n\r\n'.encode()
sock.send(cmd)

while True:
    data = sock.recv(512)
    if len(data) < 1:
        break
    print(data.decode(), end='')

sock.close()
input()