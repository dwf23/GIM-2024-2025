import socket
import json
import time

if __name__ == '__main__':
    host = 'localhost'
    port = 12345  # Port to connect to
    timeout_duration = 10  # Maximum wait time in seconds for timeout

    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_socket.settimeout(timeout_duration)  # Set timeout for connection attempt

    start_time = time.time()
    while True:
        try: #connection attempt loop
            client_socket.connect((host, port))
            print("Sub-board connected to Main board successfully")

            print("Sub board waiting for data to be sent...")
            while True:  # Waiting for Data and Processing It loop
                received_data = client_socket.recv(1024).decode()  # Receive data from the main board
                
                if not received_data: #Handling No Data (Connection Lost or Closed)
                    print("Connection lost or closed by main board.")
                    break  # Exit the loop if no data is received (connection broken)

                #parse received data
                try:
                    received_1 = json.loads(received_data)  # Deserialize JSON
                except json.JSONDecodeError:
                    print("Error: Received data is not valid JSON.")
                    client_socket.close()
                    continue
                
                #Process received data
                print(f"Sub-Board Received: {received_1}") #data_to_send = (bias_change, weight_change,output_k)              
                # prior_bias_change = received_1["bias_change"]
                # prior_weight_change = received_1["weight_change"]
                # prior_output_k =  received_1["output_k"]

                new_bias_Change = [x * -1 for x in received_1["bias_change"]]
                new_weight_Change = [[x * 2 for x in row] for row in received_1["weight_change"]]
                new_output_k = [[x-3 for x in row] for row in received_1["output_k"]]

                #Send processed data back to main board
                data_to_send = {
                        "bias_change": new_bias_Change,
                        "weight_change": new_weight_Change,
                        "output_k": new_output_k
                    }
                serialized_data = json.dumps(data_to_send)  # Convert data to a JSON string
                print("PRE JSON",data_to_send)
                print(f"Sub-Board Processed: {serialized_data}")
                print("----\n")

                # Send the result back to the main board
                client_socket.send(serialized_data.encode())

            # break  # Exit loop once connected

        #Error Handling for Timeout or Connection Refused
        except (socket.timeout, ConnectionRefusedError) as e:
            elapsed_time = time.time() - start_time
            if elapsed_time >= timeout_duration:
                print("Connection failed: Timeout reached. Exiting.")
                exit(1)  # Exit the script with an error code
            print("Retrying connection...")
            time.sleep(1)  # Wait a bit before retrying

        #When the loop ends, whether due to connection loss or an error, the socket is closed to clean up resources.
        client_socket.close()
        

