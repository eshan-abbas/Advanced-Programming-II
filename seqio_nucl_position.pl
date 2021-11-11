#! /bin/perl -w
#Bio::SeqIO use for restriction site number calculation
#Eshan Abbas, MBI18008
use Bio::SeqIO;
$in = Bio::SeqIO->new(-file => "NC_000913.fna", '-format' => 'Fasta')->next_seq()->seq;
my ($r, $t)=(0)x 6;
for ($i=0; $i<=length($in) - 1; $i++)
{
  $jk = substr($in, $i, 6);
  if ($jk =~ /GAATTC/){$r++; $i+=5;}
  elsif ($jk =~ /GGATCC/){$t++;$i+=5;}
}
print "Number of EcoR1 sites: ".$r."\n"."Number of BamH1 sites: ".$t;
