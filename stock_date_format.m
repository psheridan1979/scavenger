function d = stock_date_format(n, varargin )
%returns date string n days before d2 if d2 is specified in
%format 'ddmmyyyy'
%otherwise returns date string n days before current date
if isempty(varargin)
    d2 = datestr(date(),'ddmmyyyy');
else
    d2 = varargin;
end
d2_num = datenum(d2,'ddmmyyyy');

d = datestr(d2_num - n,'ddmmyyyy');
end

