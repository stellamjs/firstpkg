pesoptm <- function(peso, imc, altura){
  resul<-ifelse (imc <= 22, peso, (altura^2)*22)
  return(resul)
}
