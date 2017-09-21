%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on?
%%Bingyan Wu: chromosome 13.

% B. How many exons does it have?
%%Bingyan Wu: it has 3 exons.

% C. What is the precise position of its stop codon in the genome?
%%Bingyan Wu:27969006

% D. Identify at least one difference in sequence between human and mouse
% CDX2.
%%Bingyan Wu:the human and mouse CDX2 differ in sizes. while in human it
%%has 5892bp for coding region and 9003bp for transcripts with UTRs, mouse
%%has 5141bp for coding region and 6350bp for transcripts with UTRs.

% E. In which human tissues is it expressed most abundantly?
%%Bingyan Wu: colon-Transverse

%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 
%%Bingyan Wu: NM_001265.4

% B. Use MATLAB to read the genbank information corresponding to that
% accession number.
genebank_dat = genbankread('NM_001265.gb');

% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?
%%Bingyan Wu:from genebank_dat.Features, it starts from 363 and ends at
%%1304. before the start codon, there's UTR, 5' untranslated region and
%%after stop codon there's poly_A tail and 3'UTR.

% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 
protein_dat = getgenpept(genebank_dat.CDS.protein_id);
%%Bingyan Wu: the homeobox domain of the protein is ar 190 to 242 of the
%%amino acid sequence