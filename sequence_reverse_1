#!/usr/bin/perl
#sequence $reverse
#Escherichia coli laz z gene sequence
#7/10/21
open (FH, "E_coli_laz_z_g_363231_366305.fasta") || die "The input file doesn't exist";
open (FH1, ">laz_z_reverse_01.txt") || die "The output file cannot be created";
chomp (@arr = <FH>);
shift (@arr);
$genome = join("", @arr);
$genome =~ tr/ATGC/TACG/;
$genome = reverse $genome;
$genome =~ tr/ATGC/TACG/;
for ($i = 0; $i<length($genome); $i+=100)
{
  $f_genome = substr($genome, $i, 100);
  for ($j = 0; $j < length($f_genome); $j+=10)
  {
    $f1_genome = substr($f_genome, $j, 10);
    print FH1 $f1_genome."\t";
  }
  print FH1 "\n";
}
close FH;
