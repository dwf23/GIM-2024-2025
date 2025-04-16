#include "gim_model_peripheral.h"


ap_uint<16 * ARRAY_SIZE> convert_to_bitstream(fixed_16 data[ARRAY_SIZE]) {
    ap_uint<16 * ARRAY_SIZE> bitstream = 0;


    for (int i = 0; i < ARRAY_SIZE; i++) {        
        ap_uint<16 * ARRAY_SIZE> number = *reinterpret_cast<ap_uint<16>*>(&data[i]);
        std::cout << "Converted number: " << std::hex << number << std::endl;;
        bitstream = (number << (i*16)) | bitstream;  // Shift and concatenate
    }

    return bitstream;
}

void send_data(packet_line& in_stream, bool &flag, volatile bool &loop, float &received_val_1, float &received_val_2, comm_line &alpha_tx, bool &send_sent_flag) {
    #pragma HLS INTERFACE mode=s_axilite port=flag
    #pragma HLS INTERFACE mode=s_axilite port=loop
    #pragma HLS INTERFACE mode=s_axilite port=received_val_1
    #pragma HLS INTERFACE mode=s_axilite port=received_val_2
    #pragma HLS INTERFACE mode=s_axilite port=send_sent_flag
    #pragma HLS INTERFACE ap_hs port=alpha_tx
    #pragma HLS interface s_axilite port=return
    #pragma HLS pipeline II=2
    //#pragma HLS INTERFACE ap_fifo port=in_stream
    #pragma HLS INTERFACE axis port=in_stream

    axis<fixed_16, 0, 1, 1> in_val;
    ap_uint<16* ARRAY_SIZE> bitstream;
    bool bit;
    

    while(loop){
        if(!in_stream.empty()){
            // std::cout << "Done resetting internally" << std::endl;
            std::cout << "Checkpoint" << std::endl;
            in_val = in_stream.read();
            if(in_val.dest == 2){
                std::cout << "Received Valid Data" << std::endl;
                in_val.display();
                // std::cout << "Received ID" << in_val.ID << std::endl;
                flag = true;
                received_val_1 = in_val.data[0].to_float();
                received_val_2 = in_val.data[1].to_float();
                bitstream = convert_to_bitstream(in_val.data);
                for(int i = 0; i < 16*ARRAY_SIZE; i++){
                    while(!alpha_tx.ready());
                    bit = (bitstream >> i) & 1;
                    alpha_tx.write(bit);
                }
                send_sent_flag = 1;
            }
            else{
                std::cout << "Received Invalid Data" << std::endl;
            }

        }
    }
 }

 