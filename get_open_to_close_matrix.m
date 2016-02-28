function [open, aclose, delta] = get_open_to_close_matrix(h)
%Takes a history struct created by hist_stock_data and reaturns an
%NxM matrix where N = the size of the date range in h and
%M = the number of stocks in h
%opens contains the opening prices for each stock 
%delta_opens contains the change in opening price from the previous day
%and is size N-1xM

open = zeros(length(h(1).Open),length(h));
aclose = zeros(length(h(1).AdjClose),length(h));
for i = 1:length(h)
    aclose(:, i) = h(i).AdjClose;
    open(:,i) = h(i).Open;
end
    
    delta = aclose-open;
end

