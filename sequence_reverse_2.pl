#!/usr/bin/perl
#sequence $reverse
#Escherichia coli laz z gene sequence
#7/10/21
open (FH, "E_coli_laz_z_g_363231_366305.fasta") || die "The input file doesn't exist";
open (FH1, ">laz_z_reverse_02.txt") || die "The output file cannot be created";
chomp (@arr = <FH>);
shift (@arr);
$genome = join("", @arr);
my $reverse = '';
$reverse .= substr($genome, -$_, 1) for 1 .. length($genome);
for ($i = 0; $i<length($reverse); $i+=100)
{
  $f_genome = substr($reverse, $i, 100);
  for ($j = 0; $j < length($f_genome); $j+=10)
  {
    $f1_genome = substr($f_genome, $j, 10);
    print FH1 $f1_genome." ";
  }
  print FH1 "\n";
}
close FH;
