function dnaseq = protein2dna(proteinseq)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
len=length(proteinseq);
dnaseq='';
filename='codons.csv';
t=readtable(filename);
ta=table2array(t(:,1:2));
taa=cell2mat(ta);
for i=1:3:len-2
    for j=1:64
        if proteinseq(i:i+2)==taa(j,1:3)
            dnaseq(i:i+2)=taa(j,4:6);
        end
    end
end
end


