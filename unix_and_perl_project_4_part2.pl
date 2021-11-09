# project 4
# unix_and_perl_project_4.pl by Eshan Abbas, MBI18008
# name search in protein sequences

open(FH, "multiple_protein_sequence.fasta") || die "The file cannot be opened";
@arr = <FH>;
chomp(@arr);
$protein_sequence = join("\n", @arr);
@list = split(">", $protein_sequence);
print "\n";
foreach $i (@list)
{
  if ($i =~ /PTT/)
  {
    @i = split(" ", $i);
    print @i[0];
    print "\n";
  }
}
