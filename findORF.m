function [ORF_length, start_pos, stop_pos] = findORF(dnaseq)
%Function to find the length of the longest open reading frame of a
%sequences called dnaseq

%fill in here. 
startcodon_pos=strfind(dnaseq,'ATG');
stopcodon_pos=[strfind(dnaseq,'TAA'),strfind(dnaseq,'TAG'),strfind(dnaseq,'TGA')];
firstStopCodon=zeros(1,length(startcodon_pos));
for ii=1:length(startcodon_pos)
    ORFlengths=stopcodon_pos-startcodon_pos(ii);
    good_length=1e8;
    good_index=0;
    for jj=1:length(ORFlengths)
        if ORFlengths(jj)>0 && mod(ORFlengths(jj),3)==0 && ORFlengths(jj)<good_length
         good_length=ORFlengths(jj);
         good_index=jj;
        end
    end
    if good_index>0
        firstStopCodon(ii)=stopcodon_pos(good_index);
    else
        firstStopCodon(ii)=startcodon_pos(ii);
    end
end

ORFSizes=firstStopCodon-startcodon_pos+3;
[ORFlengthMax,ind_max]=max(ORFSizes);

if ORFlengthMax>0
    ORF_length=ORFlengthMax;
    start_pos=startcodon_pos(ind_max);
    stop_pos=firstStopCodon(ind_max);
else
    ORF_length=0;
    start_pos=0;
    stop_pos=0;
end