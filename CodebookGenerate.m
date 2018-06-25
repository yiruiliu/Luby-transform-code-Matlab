%generate a kxn codebook
function [Codebook] = CodebookGenerate (c,delta,k,n)
RSD=RSDgenerate (c,delta,k);
X=1:k;
% Degree distribution
DD=rand_gen(X,RSD,n);
Codebook=zeros(k,n);
for i=1:n
    index=randsample(k,DD(i));
    Codebook(index,i)=1;
end
end
