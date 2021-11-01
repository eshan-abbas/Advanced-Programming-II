# project 2
# unix_and_perl_project_2.pl by Eshan Abbas, MBI18008
# Descriptive statistics

use Statistics::Descriptive;
@num_array = (1, 21, 43, 45, 12, 5, 6, 32, 12, 14, 10);
@arr = sort {a <=> b} @num_array;
$stat = Statistics::Descriptive::Full->new();
$stat->add_data(@arr);
$mean = $stat->mean();
$median = $stat->quantile(2);
$mode = $stat->mode();
$sd = $stat->standard_deviation();
$min = $stat->min();
$max = $stat->max();
print $mean."\n";
print $median."\n";
print $mode."\n";
print $sd."\n";
print $min."\n";
print $max."\n";
