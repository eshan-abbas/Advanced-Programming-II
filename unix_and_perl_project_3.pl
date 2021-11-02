# project 3
# unix_and_perl_project_2.pl by Eshan Abbas, MBI18008
# Sequence shuffler

chomp(@arr = <FH>);
$genome = "ATTTACCTACTCATCATACTCTATCTACAGCGCGAGCGACAGHCTATCCTCGGGCTCTCGCTGCTCGCTCGCTCGCTCATAGGATCTATCTAACGGCGCATACCATCGACT";
@genome = split("", $genome);
for ($i=0; $i<=length($genome); $i++)
{
  my @sequence;
  @sequence = @genome;
  print @sequence;
  print "\n";
  $A = int(rand(length($genome)));
  $B = int(rand(length($genome)));
  print "Index 1: ".$A."\t"."Index 2: ".$B."\n";
  @sequence[$A, $B] = @sequence[$B, $A];
  $genome_final = join("", @sequence);
  print $genome_final."\n\n";
}
