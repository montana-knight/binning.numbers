#' Binning numbers function
#'
#' @param sequence_to_cut A sequence of numbers that you want to know how many numbers are in however many bins
#' @param desired_bin_size The bin size you want
#' @param right default is FALSE
#'
#' @return a frequency table
#' @export
#'
#' @examples
#' sequence_to_cut <- 0:100
#' binning_numbers(sequence_to_cut, 5)


binning_numbers <- function(sequence_to_cut, desired_bin_size, right = FALSE){
  breaks <- seq(min(sequence_to_cut),max(sequence_to_cut),by=desired_bin_size)
  sequence_cut <- cut(sequence_to_cut, breaks, right = FALSE) # cuts up the sequence accordingly
  sequence_bins_freqtable <- table(sequence_cut)
  return(sequence_bins_freqtable)
}
