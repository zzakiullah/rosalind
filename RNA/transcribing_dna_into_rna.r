# ID:     RNA
# Title:  Transcribing DNA into RNA

transcribing_dna_into_rna <- function(filename) {
  dna <- ""
  rna <- str_replace_all(dna, "T", "U")
  return(rna)
}
