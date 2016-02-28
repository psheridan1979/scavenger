function [I_matrix] = get_K_indices(Matrix,K,GorL,CorR)
%returns a binary matrix identifying K elements
%in each column or row of matrix M
%if GorL == 1 then the K greatest elements are returned
%if GorL == -1 then the K least indices are returned
%if CorR == 'C' then the function operates on columns of M
%if CorR == 'R' then the function operates on rows of M

if CorR == 'C'
    M = Matrix;
elseif CorR == 'R'
    M = Matrix';
else
   Disp('CorR must be either "C" or "R"');
   Indices = [];
   return;
end

if ((GorL ~= 1) && (GorL ~= -1)) 
    Disp('GorL must be either 1 or -1')
    Indices = [];
    return;
end
M = M * GorL;

[m n] = size(M);

if K >= m
    Disp('K must be less than the dimension being searched')
    Indices = [];
    return;
end

I_matrix = zeros(m,n);
for i = 1:K
   [C,I] = max(M,[],1);
   for j = 1:n
       I_matrix(I(j),j) = 1;
       M(I(j),j) = -Inf;
   end
   
end

end

