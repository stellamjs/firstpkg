% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/myimcf.R
\name{myimcf}
\alias{myimcf}
\title{Calculo do IMC}
\usage{
myimcf(peso, altura)
}
\arguments{
\item{peso}{Medido em Kg}

\item{altura}{Medido em m}
}
\value{
Calculo do IMC corporal
}
\description{
Calculo do IMC
}
\examples{

medidas <- data.frame(paciente = seq(1:5), peso = c(65.8,48.3,59.6,63.2,51.9), altura = c(1.65, 1.50, 1.59, 1.58, 1.61))

medidas

medidas$imc <- myimcf(medidas$peso, medidas$altura)

}
