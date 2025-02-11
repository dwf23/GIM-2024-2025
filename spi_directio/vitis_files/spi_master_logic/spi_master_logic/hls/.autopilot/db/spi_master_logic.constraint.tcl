set clock_constraint { \
    name clk \
    module spi_master_logic \
    port ap_clk \
    period 10 \
    uncertainty 2 \
}

set all_path {}

set false_path {}

