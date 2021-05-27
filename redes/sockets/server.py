import socket

port = 20001

with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as server_socket:
    server_socket.bind(('', port))
    print('receiving')

    while True:
        message, client_addr = server_socket.recvfrom(2048)
        res = message.decode('utf-8').upper()

        server_socket.sendto(res.encode('utf-8'), client_addr)