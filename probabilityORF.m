function [probability] = probabilityORF(sequence_length,ORF_length)
n=0;
for j=1:1000
dnaseq=randdnaseq(sequence_length);
max_length=findORF(dnaseq);
if max_length>ORF_length
    n=n+1;
end
end
probability=n/1000;
end

