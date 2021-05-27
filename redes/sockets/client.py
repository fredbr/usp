import socket

server_name = '192.168.1.2'
port = 20001

with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as client_socket:
    msg = input().encode('utf-8')
    client_socket.sendto(msg, (server_name, port))

    res, addr = client_socket.recvfrom(2048)

    print(res.decode('utf-8'))
