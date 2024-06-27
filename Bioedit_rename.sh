#Rearranging FASTA file based on metadata's barcode
#Run the Python Script rename.py
#Usage python file: 
python3 rename.py all_samples.fasta barcode.txt > reordered_fasta.fa #(Change the name according to the fasta run name)
#Used seqtk: 
seqkit replace -p "(.+)" -r '{kv}' -k hcov_rename.txt reordered_fasta.fa > NICRUN40.fasta 
#all samples fasta: the fasta generated will be given as the inpuut during rearranging
#barcode.txt : The barcode from the metadata.
#NICRUN40.fasta: The rearranged fasta sequence will be stored in this file.
#hcov_rename.txt: This has the barcode and the virus name according to gisaid metadata, which will be taken for the renaming purpose.(Mandatory step, copy the barcode and virus name from the metadata)
#final prepared fasta file with rearranged and modified name will be stored as NICRUN40.fasta.
