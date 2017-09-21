function randomSeq = randdnaseq(N)
a = randi(4,[1,N]);
b=['A','T','C','G'];
randomSeq=b(a);
% returns a random dna sequence of length N
