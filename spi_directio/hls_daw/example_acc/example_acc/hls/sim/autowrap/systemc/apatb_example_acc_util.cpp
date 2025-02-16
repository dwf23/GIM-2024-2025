#include <iostream>
#include "hls_stream.h"
#include "hls_directio.h"

using namespace std;

struct __cosim_T_4__ {char data[4];};
extern "C" void fpga_fifo_push_4(__cosim_T_4__* val, hls::stream<__cosim_T_4__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_4(__cosim_T_4__* val, hls::stream<__cosim_T_4__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_4(hls::stream<__cosim_T_4__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_4(hls::stream<__cosim_T_4__>* fifo) {
  return fifo->exist();
}
extern "C" bool fpga_direct_valid_4(hls::directio<__cosim_T_4__>* direct) {
  return direct->valid();
}
extern "C" void fpga_direct_load_4(__cosim_T_4__* val, hls::directio<__cosim_T_4__>* direct) {
  *val = direct->read();
}
extern "C" void fpga_direct_store_4(__cosim_T_4__* val, hls::directio<__cosim_T_4__>* direct) {
  direct->write(*val);
}
