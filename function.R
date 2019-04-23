add_nums <- function(num1, num2) {
  num1 + num2
}

random_half_split <- function(data) {
  size <- nrow(data) / 2
  dplyr::sample_n(data, size)
}