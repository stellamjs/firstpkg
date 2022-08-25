#' Calculo do IMC
#'
#' @param peso Medido em Kg
#' @param altura Medido em m
#'
#' @return Calculo do IMC corporal
#' @export
#'
#' @examples
#'
#' medidas <- data.frame(paciente = seq(1:5), peso = c(65.8,48.3,59.6,63.2,51.9), altura = c(1.65, 1.50, 1.59, 1.58, 1.61))
#'
#' medidas
#'
#' medidas$imc <- myimcf(medidas$peso, medidas$altura)
#'
myimcf <- function(peso, altura){
  imc <- peso/(altura^2)
  return(imc)
}
