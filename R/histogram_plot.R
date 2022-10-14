#' Histogram plot
#'
#' @param sequence_to_cut the sequence to be binned
#' @param desired_bin_size how big the bins should be
#'
#' @return ggplot object that can be plotted
#' @export

histogram_plot <- function(sequence_to_cut, desired_bin_size){
  plot_to_return <- ggplot2::ggplot() +
    ggplot2::geom_histogram(ggplot2::aes(x = sequence_to_cut), bins = ((max(sequence_to_cut) - min(sequence_to_cut))/desired_bin_size))
  return(plot_to_return)
}
