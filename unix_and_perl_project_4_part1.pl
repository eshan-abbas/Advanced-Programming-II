# project 4
# unix_and_perl_project_4.pl by Eshan Abbas, MBI18008
# name search in protein sequences

open(FH, "ubiquitin_enzmye_1.fasta") || die "The file cannot be opened";
@arr = <FH>;
chomp(@arr);
shift(@arr);
$protein_sequence = join("\n", @arr);
$Yh = $protein_sequence =~ s/TA//g;
print $Yh;
