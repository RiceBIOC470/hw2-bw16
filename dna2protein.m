function proteinseq = dna2protein(dnaseq,frame)
% Input a dna sequence and a reading frame and returns the corresponding
% protein sequence. 
len=length(dnaseq);
proteinseq='';
ps=1;
filename='codons.csv';
t=readtable(filename);
ta=table2array(t(:,1:2));
taa=cell2mat(ta);
if frame==1||frame==2||frame==3
for i=frame:3:len-2
    for j=1:64
        if dnaseq(i:i+2)==taa(j,4:6)
            proteinseq(ps:ps+2)=taa(j,1:3);
        break
        end
    end
    ps=ps+3;
end
else
    error('Please use the correct frame, which should be 1,2,or 3.');
end
end
        
        
    