# Datos
equipo_a <- c(2, 3, 1, 4, 2, 3, 2, 1, 3, 2)
equipo_b <- c(3, 2, 1, 3, 2, 2, 4, 2, 3, 1)


resultado_goles <- t.test(equipo_a, equipo_b)
print("Resultado de la prueba t para goles entre equipo A y B:")
print(resultado_goles)


media_a <- mean(equipo_a)
media_b <- mean(equipo_b)


promedios <- c(media_a, media_b)
equipos <- c("Equipo A", "Equipo B")


plot(promedios,
     type = "o",
     col = "purple4",            
     lwd = 2,
     pch = 16,
     xaxt = "n",
     ylim = c(0, max(promedios) + 1),
     xlab = "Equipo",
     ylab = "Goles promedio",
     main = "Promedio de goles por equipo")

axis(1, at = 1:2, labels = equipos)


lines(promedios,
      type = "o",
      col = "plum",               
      lwd = 2,
      pch = 16)



