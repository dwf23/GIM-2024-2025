// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x14 : Data signal of ap_return
//        bit 31~0 - ap_return[63:32] (Read)
// 0x18 : Data signal of ap_return
//        bit 31~0 - ap_return[95:64] (Read)
// 0x1c : Data signal of ap_return
//        bit 31~0 - ap_return[127:96] (Read)
// 0x20 : Data signal of ap_return
//        bit 31~0 - ap_return[159:128] (Read)
// 0x24 : Data signal of ap_return
//        bit 31~0 - ap_return[191:160] (Read)
// 0x28 : Data signal of ap_return
//        bit 31~0 - ap_return[223:192] (Read)
// 0x2c : Data signal of ap_return
//        bit 31~0 - ap_return[255:224] (Read)
// 0x68 : Data signal of training
//        bit 15~0 - training[15:0] (Read/Write)
//        others   - reserved
// 0x6c : reserved
// 0x38 ~
// 0x3f : Memory 'w1_0' (2 * 16b)
//        Word n : bit [15: 0] - w1_0[2n]
//                 bit [31:16] - w1_0[2n+1]
// 0x40 ~
// 0x47 : Memory 'w1_1' (2 * 16b)
//        Word n : bit [15: 0] - w1_1[2n]
//                 bit [31:16] - w1_1[2n+1]
// 0x48 ~
// 0x4f : Memory 'w2_0' (2 * 16b)
//        Word n : bit [15: 0] - w2_0[2n]
//                 bit [31:16] - w2_0[2n+1]
// 0x50 ~
// 0x57 : Memory 'w2_1' (2 * 16b)
//        Word n : bit [15: 0] - w2_1[2n]
//                 bit [31:16] - w2_1[2n+1]
// 0x58 ~
// 0x5f : Memory 'bias_1' (2 * 16b)
//        Word n : bit [15: 0] - bias_1[2n]
//                 bit [31:16] - bias_1[2n+1]
// 0x60 ~
// 0x67 : Memory 'bias_2' (2 * 16b)
//        Word n : bit [15: 0] - bias_2[2n]
//                 bit [31:16] - bias_2[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL       0x00
#define CONTROL_ADDR_GIE           0x04
#define CONTROL_ADDR_IER           0x08
#define CONTROL_ADDR_ISR           0x0c
#define CONTROL_ADDR_AP_RETURN     0x10
#define CONTROL_BITS_AP_RETURN     256
#define CONTROL_ADDR_TRAINING_DATA 0x68
#define CONTROL_BITS_TRAINING_DATA 16
#define CONTROL_ADDR_W1_0_BASE     0x38
#define CONTROL_ADDR_W1_0_HIGH     0x3f
#define CONTROL_WIDTH_W1_0         16
#define CONTROL_DEPTH_W1_0         2
#define CONTROL_ADDR_W1_1_BASE     0x40
#define CONTROL_ADDR_W1_1_HIGH     0x47
#define CONTROL_WIDTH_W1_1         16
#define CONTROL_DEPTH_W1_1         2
#define CONTROL_ADDR_W2_0_BASE     0x48
#define CONTROL_ADDR_W2_0_HIGH     0x4f
#define CONTROL_WIDTH_W2_0         16
#define CONTROL_DEPTH_W2_0         2
#define CONTROL_ADDR_W2_1_BASE     0x50
#define CONTROL_ADDR_W2_1_HIGH     0x57
#define CONTROL_WIDTH_W2_1         16
#define CONTROL_DEPTH_W2_1         2
#define CONTROL_ADDR_BIAS_1_BASE   0x58
#define CONTROL_ADDR_BIAS_1_HIGH   0x5f
#define CONTROL_WIDTH_BIAS_1       16
#define CONTROL_DEPTH_BIAS_1       2
#define CONTROL_ADDR_BIAS_2_BASE   0x60
#define CONTROL_ADDR_BIAS_2_HIGH   0x67
#define CONTROL_WIDTH_BIAS_2       16
#define CONTROL_DEPTH_BIAS_2       2
