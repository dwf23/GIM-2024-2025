% This program is the data loader for the hardware 2x2 array
% It uses the XOR problem, and loads data points in respective to this
% model. This mode is setup to interact directly with the hardware array
% programmed in Simulink. Array names match the signal line names between
% files.

% constructing the input data. Data must be padded to match by clock cycle.
% each column is the input to one weight PE, and each row of that column
% represents the time series input.

% defining a function block to output the necessary data
function [o0_in, o1_in] = data_loading(start, layers)
    if start == 1
        o0_in_data = zeros(1, 2 + 2*(layers - 1));
        o1_in_data = zeros(1, 2 + 2*(layers - 1));
        o0_in = timeseries(o0_in_data);
        o1_in = timeseries(o1_in_data);
    else
        o0_in = timeseries(0);
        o1_in = timeseries(0);
    end    
end