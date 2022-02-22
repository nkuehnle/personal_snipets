# A single line pipe to collect a listing of all of the different types of gene biotypes from a GTF annotation file
grep -o "gene_biotype \"[a-zA-Z0-9_\-]*\"" genes.gtf | sed 's/gene_biotype //' | awk -v RS="[ \n]+" '!n[$0]++'
