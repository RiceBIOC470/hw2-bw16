function OptimizedDNAseq = protein2dnaOptimized(proteinseq)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

len=length(proteinseq);
OptimizedDNAseq='';
filename='codons.csv';
t=readtable(filename);
ta=table2array(t(:,1:2));
taa=cell2mat(ta);
frequency=table2array(t(:,3));
for i=1:3:len-2
    highestfrequency=0;
    for j=1:64
        if proteinseq(i:i+2)==taa(j,1:3)
            if frequency(j,1)>highestfrequency
                highestfrequcency=frequency(j,1);
                OptimizedDNAseq(i:i+2)=taa(j,4:6);
            end     
        end
    end
end

end

