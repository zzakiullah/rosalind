# ID:     REVC
# Title:  Complementing a Strand of DNA

use strict;
use warnings;

sub complementing_dna_strand {
  my @args = @_;
  
  my $original_strand = "$args[0]";
  print("$original_strand\n\n");

  $original_strand = scalar reverse "$original_strand";
  print("$original_strand\n\n");

  my $complement_strand = "$original_strand";

  for my $i (0..length($original_strand)-1){
    my $char = substr($original_strand, $i, 1);
    my $complement_char = "";
    if ($char eq "A") {
      $complement_char = "T";
    }
    elsif ($char eq "T") {
      $complement_char = "A";
    }
    elsif ($char eq "C") {
      $complement_char = "G";
    }
    else {
      $complement_char = "C";
    }
    if ($i == 0) {
      $complement_strand = $complement_char . substr($complement_strand, $i+1);
    }
    elsif ($i < length($complement_strand) - 1) {
      $complement_strand = substr($complement_strand, 0, $i) . $complement_char . substr($complement_strand, $i+1);
    }
    else {
      $complement_strand = substr($complement_strand, 0, $i) . $complement_char;
    }
  }
  
  print("$complement_strand\n");
}
