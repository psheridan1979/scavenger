function [volume, OBV] = get_OBV_matrix(h)
%Takes a history struct created by hist_stock_data and reaturns an
%NxM matrix where N = the size of the date range in h and
%M = the number of stocks in h
%opens contains the opening prices for each stock 
%delta_opens contains the change in opening price from the previous day
%and is size N-1xM


volume = zeros(length(h(1).Open),length(h));
for i = 1:length(h)
    volume(:, i) = h(i).Volume;
end
    
    delta_opens = opens(1:(end-1),:) - opens(2:end,:);
    delta_open_ratio = delta_opens ./ opens(2:end,:);
end

