#' Analisis qualitativa do IMC corporal
#'
#' @param x Valor do IMC corporal
#'
#' @return Analisis qualitativa do IMC em funcao do limite = 22
#' @importFrom dplyr case_when
#' @export
#'
#' @examples
#'
#' medidas$index <- anacuali(medidas$imc)
#'
anacuali <- function(x){
  result <- dplyr::case_when(x > 22 ~ 'sobrepeso',
                             x <= 22 ~ 'normal')
  return(result)
}
