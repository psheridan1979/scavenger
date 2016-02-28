function C = clean_up_history(H)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = length(H);

w = waitbar(0,'Cleaning up History');

C = [];

datesizes = [];

for i = 1:n
    datesizes = [length(H(i).Date) datesizes];
end

d = floor(median(datesizes));

for i = 1:n
    if( length(H(i).Date) == d) 
        C = [C H(i)];
    end
    
    waitbar(i/n);
end


close(w);
end



