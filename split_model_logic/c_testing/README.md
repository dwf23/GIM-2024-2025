Natalia Mendiola, C Simulation of Distributed Communication C++
2/8/2025

TO RUN:
1.Open two terminals, one for main and the other for Sub

2a. On a terminal, first run :
./c_server

2b. On the other terminal, run the following:
./c_client

NOTE: this results in rewriting a text file, learned_weights_bias.txt

3. Open Csim_xor_validation.py and run script. This will read the bias/weights from
the text file and determine accuracy for XOR problem

---------------------------
TO EDIT:
1. If on windows, please ensure you have mingw-w64 downloaded 
to run C++ files on VScode
https://code.visualstudio.com/docs/cpp/config-mingw

2. If making edits to code, run
g++  test_c_main.cpp act_pe.cpp array.cpp bias_pe.cpp error_pe.cpp weight_pe.cpp -o c_server 
g++  test_c_sub.cpp act_pe.cpp array.cpp bias_pe.cpp error_pe.cpp weight_pe.cpp -o c_client 

        note: If #pragma comment(lib, "ws2_32.lib") not present in code, also use  -lws2_32 after -o exe_file_name

3. Open two terminals, one for main and the other for Sub

4. On a terminal, first run :
./c_server

On the other terminal, run the following:
./c_client

NOTE: this results in rewriting a text file, learned_weights_bias.txt

5. Open Csim_xor_validation.py and run script. This will read the bias/weights from
the text file and determine accuracy for XOR problem
