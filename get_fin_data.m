Range = 180;
Tickers = 'SHORT.txt';
H = hist_stock_data(stock_date_format(Range),stock_date_format(0),Tickers);
H = clean_up_history(H);
D = get_date_array(H);
N = get_name_array(H);
O = fints(D, get_open_matrix(H),N,1,'Open');
C = fints(D, get_adj_close_matrix(H), N,1,'Close');
H = fints(D, get_high_matrix(H), N,1,'High');
L = fints(D, get_low_matrix(H), N, 1,'Low');
V = fints(D, get_volume_matrix(H),N,1,'Volume');
O2C = fints(D, get_open_to_close_matrix(H),N,1,'Change');