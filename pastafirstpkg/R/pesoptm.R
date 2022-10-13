#' Sugestao peso ideal
#'
#' @param peso Calculado em Kg
#' @param imc Calculado em funcao do peso e altura
#' @param altura Calculado em m
#'
#' @return Sugestao do peso ideal em funcao de imc=22
#' @export
#'
#' @examples
#' medidas <- data.frame(paciente = seq(1:5), peso = c(65.8,48.3,59.6,63.2,51.9),
#' altura = c(1.65, 1.50, 1.59, 1.58, 1.61))
#' medidas$imc <- myimcf(medidas$peso, medidas$altura)
#' medidas$index <- anacuali(medidas$imc)
#'
#' medidas$PesoIdeal <- pesoptm(medidas$peso, medidas$imc, medidas$altura)
#' medidas
#'
pesoptm <- function(peso, imc, altura){
  resul<-ifelse (imc <= 22, peso, (altura^2)*22)
  return(resul)
}

#' try new function
#' just to see how it is going to work
hendra_cedar_results <- function(database.connection.object) {
  rs <-  RMySQL::dbSendQuery(database.connection.object, "select * from hendra_cedar_results")
  RMySQL::fetch(rs, n = -1)
}
