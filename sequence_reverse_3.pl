#!/usr/bin/perl
#sequence $reverse
#Escherichia coli laz z gene sequence
#7/10/21
open (FH, "E_coli_laz_z_g_363231_366305.fasta") || die "The input file doesn't exist";
open (FH1, ">laz_z_reverse_03.txt") || die "The output file cannot be created";
chomp (@arr = <FH>);
shift (@arr);
$genome_i = join("", @arr);
@e = split("", $genome_i);
@wd = ();
for ($i= length($genome_i)-1; $i>=0; $i--)
{
  @wd[length($genome_i)-$i] = @e[$i];
}
$reverse = join("", @wd);
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
