"""
Testing comm protocol


If you get stuck in an infinite loop:

1. 
    netstat -ano | findstr : port_value
    example: netstat -ano | findstr :12345

    expected output something like: TCP    127.0.0.1:12345    0.0.0.0:0    LISTENING    5678
    
2. taskkill /PID LISTENING_VALUE /F
    example: taskkill /PID 5678 /F

"""
import socket
import json
NUM_ITERATIONS = 3

if __name__ == '__main__':

    #sets up comm between board
    # -----------------------------
    # Create a socket (server) to communicate with the sub-board
    host = 'localhost'
    port = 12345  # Port to listen on
    try:
        # Create and bind the server socket (IPv4, TCP)
        server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)  # Allow immediate reuse
        server_socket.bind((host, port))
        server_socket.listen(1)
        print("Main Board listening for connections...")
    except socket.error as e:
        print(f"Socket error: {e}")
        exit(1)
    # try:
    #     # Create and bind the server socket (IPv4, TCP)
    #     server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    #     server_socket.bind((host, port))
    #     server_socket.listen(1) #only one client to connect at a time        
    #     print("Main Board listening for connections...")
    # except socket.error as e:
    #     print(f"Socket error: {e}")
    #     exit(1)
    #     conn, addr = server_socket.accept() #waits until client connects
    #     print(f"Connection established with Sub-board at {addr}")

    conn, addr = server_socket.accept()
    print(f"Connection established with Sub-board at {addr}")
    #initialize values
    bias_change = [1,0]
    weight_change = [[1,0],[1,1]]
    output_k = [[0,1],[0,0]]

    for n in range(NUM_ITERATIONS):
        #Prepares data to send
        # output_k, bias_change , weight_change = model_array(w1_local, bias_1_local, output_0, delta_1, lr, model, alpha, training)
        data_to_send = {
            "bias_change": bias_change,
            "weight_change": weight_change,
            "output_k": output_k
        }
        serialized_data = json.dumps(data_to_send)  # Convert data to a JSON string for transmission
        print(f"Main Board Sends: {serialized_data}")  
        conn.send(serialized_data.encode())

        #receive data from subboard
        processed_data = conn.recv(1024).decode()  # Receive response
        received_data = json.loads(processed_data)
        print(f"Main Board Received: {received_data}")  

        # Incrementing each element by 1
        bias_change = [x + 1 for x in received_data["bias_change"]]
        weight_change = [[x + 1 for x in row] for row in received_data["weight_change"]]
        output_k = [[x + 1 for x in row] for row in received_data["output_k"]]

        print("fUpdated bias, weight_change, and output_k: {bias_change},{weight_change},{output_k})
        print("------\n")

    print("Ran through all epochs")
    conn.close()

