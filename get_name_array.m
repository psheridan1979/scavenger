function n = get_name_array( h )
%returns an array of stock names in h
%h is a history struct created by hist_stock_data
    n = cell(1,length(h));
    for i = 1:length(h)
        n(i) = cellstr(h(i).Ticker);
    end
    
end

