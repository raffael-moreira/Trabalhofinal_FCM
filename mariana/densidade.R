# distribuição por densidade

library(ggplot2)
library(scales)
library(dplyr)

camada1AL <- read.csv("~/Downloads/AulaFCM/Trabalhofinal_FCM/mariana/DoseCamada1_Run_0.csv")
camada2AL <- read.csv("~/Downloads/AulaFCM/Trabalhofinal_FCM/mariana/DoseCamada2_Run_0.csv")
camada3AL <- read.csv("~/Downloads/AulaFCM/Trabalhofinal_FCM/mariana/DoseCamada3_Run_0.csv")
camada4AL <- read.csv("~/Downloads/AulaFCM/Trabalhofinal_FCM/mariana/DoseCamada4_Run_0.csv")
camada1Co <- read.csv("~/Downloads/AulaFCM/Trabalhofinal_FCM/mariana/DoseCamada1_Run_1.csv")
camada2Co <- read.csv("~/Downloads/AulaFCM/Trabalhofinal_FCM/mariana/DoseCamada2_Run_1.csv")
camada3Co <- read.csv("~/Downloads/AulaFCM/Trabalhofinal_FCM/mariana/DoseCamada3_Run_1.csv")
camada4Co <- read.csv("~/Downloads/AulaFCM/Trabalhofinal_FCM/mariana/DoseCamada4_Run_1.csv")

# adicionar colunas de identificação e unir os data frames
camada1Co$Placa <- "1"
camada2Co$Placa <- "2"
camada3Co$Placa <- "3"
camada4Co$Placa <- "4"
camada1AL$Placa <- "1"
camada2AL$Placa <- "2"
camada3AL$Placa <- "3"
camada4AL$Placa <- "4"

# combinar os data frames em um único data frame
dados_combinadosCo <- rbind(camada1Co, camada2Co, camada3Co, camada4Co)
dados_combinadosAL <- rbind(camada1AL, camada2AL, camada3AL, camada4AL)

print(dados_combinadosCo)

# densidade do Cobalto-60
DensidadeCo <- ggplot(dados_combinadosCo, aes(x = Dose, fill = Placa)) +
  geom_density(alpha = 0.5) +
  labs(title = "Distribuição de doses por camada - Co60", x = "Dose Absorvida (Gy)", y = "Densidade") +
  scale_fill_manual(values = c("1" = "red", "2" = "green", "3" = "blue", "4" = "purple")) +
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# densidade do AL
DensidadeAL <- ggplot(dados_combinadosAL, aes(x = Dose, fill = Placa)) +
  geom_density(alpha = 0.5) +
  labs(title = "Distribuição de doses por camada - AL", x = "Dose Absorvida (Gy)", y = "Densidade") +
  scale_fill_manual(values = c("1" = "red", "2" = "green", "3" = "blue", "4" = "purple")) +
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# graficos
print(DensidadeCo)
print(DensidadeAL)
