function [CodedString] = Encoding (s,Codebook)
CodedString=mod(s*Codebook);
end
