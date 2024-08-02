# ID:     RNA
# Title:  Transcribing DNA into RNA

transcribing_dna_into_rna <- function(dna) {
  rna <- gsub("T", "U", dna)
  print(rna)
}

transcribing_dna_into_rna("ACTG")
