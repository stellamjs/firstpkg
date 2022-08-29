#' Analisis qualitativa do IMC corporal
#'
#' @param x Valor do IMC corporal
#'
#' @return Analisis qualitativa do IMC em funcao do limite = 22
#' @importFrom dplyr case_when
#' @export
#'
#' @examples
#'medidas <- data.frame(paciente = seq(1:5), peso = c(65.8,48.3,59.6,63.2,51.9),
#'altura = c(1.65, 1.50, 1.59, 1.58, 1.61))
#'
#' medidas
#'
#' medidas$imc <- myimcf(medidas$peso, medidas$altura)
#'
#' medidas$index <- anacuali(medidas$imc)
#'
anacuali <- function(x){
  result <- dplyr::case_when(x > 22 ~ 'sobrepeso',
                             x <= 22 ~ 'normal')
  return(result)
}
