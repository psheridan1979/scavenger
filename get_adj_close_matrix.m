function [aclose, delta_aclose, delta_aclose_ratio] = get_adj_close_matrix(h)
%Takes a history struct created by hist_stock_data and reaturns an
%NxM matrix where N = the size of the date range in h and
%M = the number of stocks in h
%opens contains the opening prices for each stock 
%delta_opens contains the change in opening price from the previous day
%and is size N-1xM


aclose = zeros(length(h(1).AdjClose),length(h));
for i = 1:length(h)
    aclose(:, i) = h(i).AdjClose;
end
    
    delta_aclose = aclose(1:(end-1),:) - aclose(2:end,:);
    delta_aclose_ratio = delta_aclose ./ aclose(2:end,:);
end

