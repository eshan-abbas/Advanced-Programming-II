# project 1
# unix_and_perl_project_1.pl by Eshan Abbas, MBI18008
# length of the sequence
# Total number of A, C, G, T
# Fraction of A, C, G, T
# GC fraction

open(FH, "E_coli_laz_z_g_363231_366305.fasta") || die "file cannot be found";
open(FOUT, ">project_1.txt") || die "Output file cannot be created";
chomp(@arr = <FH>);
$genome = join("\n", @arr);
$A_count = $genome =~ tr/A//;
$T_count = $genome =~ tr/T//;
$G_count = $genome =~ tr/G//;
$C_count = $genome =~ tr/C//;
$ATGC_count = $A_count+$T_count+$G_count+$C_count;
print "Genome length = ".length($genome)."\n";
print "A_count = ".$A_count."\t"."A_count % = ".(($A_count/$ATGC_count)*100)."\n";
print "T_count = ".$T_count."\t"."T_count % = ".(($T_count/$ATGC_count)*100)."\n";
print "G_count = ".$G_count."\t"."G_count % = ".(($G_count/$ATGC_count)*100)."\n";
print "C_count = ".$C_count."\t"."C_count % = ".(($C_count/$ATGC_count)*100)."\n";
print "GC count % = ".(($G_count+$C_count)/$ATGC_count)*100;
