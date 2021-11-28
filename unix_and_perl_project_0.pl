# project 5
# unix_and_perl_project_0.pl by Eshan Abbas, MBI18008
print "Select value of k: ";
$k = <STDIN>;
open(FH, "intron_IME_data.fasta");
chomp(@arr = <FH>);
$protein_sequence = join ("\n", @arr);
%count1, %count2;
@list = split(">", $protein_sequence);
foreach $i(@list)
{@gb = split("CDS|5UTR|3UTR", ($gh = join("", (@gh = split("\n", $i)))));
  push(@tg, @gb[0]); push(@gt, @gb[1]);}
@tgt = (\@tg, \@gt);
for ($r=0; $r<=scalar(@gt); $r++)
{$bn = $tgt[0]->[$r];
  if ($bn =~ /i1_/)
  {$bv = $tgt[1]->[$r];
    for ($i=0; $i<=(length $bv)-$k; $i++)
    {$df = substr($bv, $i, $k); if (length $df == $k){push(@arr1, $df);}}}
  else
  {$bv = $tgt[1]->[$r];
    for ($i=0; $i<=(length $bv)-$k; $i++)
    {$df = substr($bv, $i, $k); if (length $df == $k){push(@arr2, $df);}}}}
foreach $str(@arr1){$count1{$str}++;}
foreach $str(@arr2){$count2{$str}++;}
print "Nucl"."\t"."i1"."\t"."Not i1"."\t"."Odds"."\t"."Log odds"."\n";
for $o(sort keys %count1){print $o."\t".$count1{$o}."\t".$count2{$o}."\t", sprintf("%.4f", ($count1{$o}/$count2{$o}))."\t", sprintf("%.4f", log($count1{$o}/$count2{$o})/log(2))."\n";}
