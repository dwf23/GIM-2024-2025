dict set slaves control {ports {ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1} ap_return {type ap_return width 256} w1_0 {type i_ap_memory width 16} w1_1 {type i_ap_memory width 16} w2_0 {type i_ap_memory width 16} w2_1 {type i_ap_memory width 16} bias_1 {type i_ap_memory width 16} bias_2 {type i_ap_memory width 16} training {type i_ap_none width 16}} mems {w1_0 {width 16} w1_1 {width 16} w2_0 {width 16} w2_1 {width 16} bias_1 {width 16} bias_2 {width 16}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
