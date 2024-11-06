# Establecer directorio de trabajo
setwd("/Users/fjbonet/Library/CloudStorage/OneDrive-UniversidaddeCórdoba/4_docencia/eco_ccaa_uco/actos_docentes/P_estructura_pobs_ecologia_CCAA/geoinfo")

#Instalar y cargar paquetes
install.packages("ggplot2")

library(ggplot2)

# Importar tabla de datos
datos <- read.csv("alturas_encinas.csv", sep = ";", dec = ",")

# Crear el histograma
ggplot(datos, aes(x = Altura)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  ggtitle("Distribución de Alturas de la Especie") +
  xlab("Altura (metros)") +
  ylab("Frecuencia")


# Guardarlo en formato imagen
ggsave("histograma_alturas.png", plot = última_plot(), width = 10, height = 8, dpi = 300)

