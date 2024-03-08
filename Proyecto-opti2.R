library(copula)
# Lee el archivo CSV
datos <- read.csv("Activos.csv")
param <- cor(datos$MKt_RF,datos$SMB)

hist(datos$SMB)
x <- seq(min(datos$SMB), max(datos$SMB), length=1000)  # Valores en el rango de los datos
y <- dnorm(x, 0, 1)  # Densidad de probabilidad
y_normal <- y * 900 * diff(hist(datos$SMB)$breaks[1:2])

# Superponer la curva de la distribución normal estándar
lines(x, y_normal, col = "red", lwd = 2)


plot(datos$MKt_RF,datos$SMB, xlab = "Retorno Activo MKt", 
     ylab = "Retornos Activo SMB", ylim = c(-10, 10),
     xlim = c(-5, 5))

c_gaussian <- normalCopula(param, dim = 2)
samples <- rCopula(1, c_gaussian)
MKt_sim <- qnorm(samples[, 1], mean(datos$MKt_RF), sd(datos$MKt_RF))
SMB_sim <- qnorm(samples[, 2], mean = 0, sd = 1)
MKt_sim
SMB_sim



