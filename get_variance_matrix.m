function [variance, M, SD] = get_variance_matrix( delta_open_ratio, NORMALIZATION_CONSTANT)
%returns an (N-2)xMxM matrix comparing how each stock varies with 
%others over time
%values with greater magnitude than NORMALIZATION are normalized

[num_dates, num_stocks] = size(delta_open_ratio);
variance = zeros(num_dates -1, num_stocks, num_stocks);

% get this running in parallel at some point
for i = 1:num_stocks
    for j = 1:num_stocks
       variance(:,j,i) = delta_open_ratio(1:(end-1),i) ./ delta_open_ratio(2:end,j);
    end
end

variance(variance < -NORMALIZATION_CONSTANT) = -NORMALIZATION_CONSTANT;
variance(variance > NORMALIZATION_CONSTANT) = NORMALIZATION_CONSTANT;

M = mean(variance,1);
M = reshape(M,num_stocks,num_stocks);

SD = std(variance,1);
SD = reshape(SD,num_stocks,num_stocks);

end

