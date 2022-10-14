
binning_numbers <- function(sequence_to_cut, desired_bin_size, right = FALSE){
  breaks <- seq(min(sequence_to_cut),max(sequence_to_cut),by=desired_bin_size)
  sequence_cut <- cut(sequence_to_cut, breaks, right = FALSE) # cuts up the sequence accordingly
  sequence_bins_freqtable <- table(sequence_cut)
  return(sequence_bins_freqtable)
}
