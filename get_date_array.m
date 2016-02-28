function d = get_date_array(h )
%returns an array of dates in serial form from a history struct h
%h is created by hist_stock_data()
   
   d = zeros(length(h(1).Date),1);
   for i = 1:length(d);
       d(i) = datenum(h(1).Date(i),'yyyy-mm-dd');
   end


end

