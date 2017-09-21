function [pprobability] = plotProbabilityORF( ORF_length )
p=[];
N=1000;
for k=1:N
    p(k)=probabilityORF(k,ORF_length);
end
xval=[1:N];
yval=p;
plot(xval,yval);
xlabel('sequence length','FontSize',18);
ylabel('probability','FontSize',18);
end
