# project 3
# unix_and_perl_project_3.pl by Eshan Abbas, MBI18008
# Sequence shuffler
$genome = "ATTTACCTACTCATCATACTCTATCTACAGCGCGAGCGACAGHCTATCCTCGGGCTCTCGCTGCTCGCTCGCTCGCTCATAGGATCTATCTAACGGCGCATACCATCGACT";
@genome = split("", $genome);
print "Original sequence: ";
print $genome."\n";
print "Length of the genome = ".length($genome)."\n\n";
for ($i=0; $i<=length($genome); $i++)
{
  my @sequence;
  @sequence = @genome;
  $A = int(rand(length($genome)));
  $B = int(rand(length($genome)));
  print "Index 1: ".$A." (".@sequence[$A].") "."\t"."Index 2: ".$B." (".@sequence[$B].") "."\n";
  print "\t"."After shuffle:"."\t"."\n";
  @sequence[$A, $B] = @sequence[$B, $A];
  print "Index 1: ".$A." (".@sequence[$A].") "."\t"."Index 2: ".$B." (".@sequence[$B].") "."\n";
  $genome_final = join("", @sequence);
  print $genome_final."\n\n";
}
