library(ggplot2)
library(scales)
library(gridExtra)
library(dplyr)

AL1 <- read.csv("/home/raffaelmoreira/topas/mysim/Output/dose/DoseCamada1_Run_0.csv")
AL2 <- read.csv("/home/raffaelmoreira/topas/mysim/Output/dose/DoseCamada2_Run_0.csv")
AL3 <- read.csv("/home/raffaelmoreira/topas/mysim/Output/dose/DoseCamada3_Run_0.csv")
AL4 <- read.csv("/home/raffaelmoreira/topas/mysim/Output/dose/DoseCamada4_Run_0.csv")
Co1 <- read.csv("/home/raffaelmoreira/topas/mysim/Output/dose/DoseCamada1_Run_1.csv")
Co2 <- read.csv("/home/raffaelmoreira/topas/mysim/Output/dose/DoseCamada2_Run_1.csv")
Co3 <- read.csv("/home/raffaelmoreira/topas/mysim/Output/dose/DoseCamada3_Run_1.csv")
Co4 <- read.csv("/home/raffaelmoreira/topas/mysim/Output/dose/DoseCamada4_Run_1.csv")

Co1$Placa <- "1"
Co2$Placa <- "2"
Co3$Placa <- "3"
Co4$Placa <- "4"
AL1$Placa <- "1"
AL2$Placa <- "2"
AL3$Placa <- "3"
AL4$Placa <- "4"
dados_combinadosCo <- rbind(Co1, Co2, Co3, Co4)
dados_combinadosAL <- rbind(AL1, AL2, AL3, AL4)

#Criação de gráficos do tipo BoxPlot para cada camada das simulações pro co e pro AL
bpCo <- ggplot(dados_combinadosCo, aes(x = Placa, y = Dose, fill = Placa)) +
  geom_boxplot() +
  ylim(0, 2.2e-06) +
  labs(title = "Dose por camadass - Cobalto-60",
       x = " ",
       y = "Dose (Gy)") +
  scale_fill_manual(values = c("1" = "lightskyblue", "2" = "lightskyblue", "3" = "lightskyblue", "4" = "lightskyblue"))+
  stat_summary(fun = mean, geom = "point", shape = 18, size = 3, color = "blue") +
  theme_minimal() +
  theme(legend.position = "none", plot.title = element_text(hjust = 0.5))

bpAL <- ggplot(dados_combinadosAL, aes(x = Placa, y = Dose, fill = Placa)) +
  geom_boxplot() +
  labs(title = "Dose por camada - Acelerador Linear",
       x = " ",
       y = "Dose (Gy)") +
  theme_minimal() +
  scale_fill_manual(values = c("1" = "salmon", "2" = "salmon", "3" = "salmon", "4" = "salmon"))+
  stat_summary(fun = mean, geom = "point", shape = 18, size = 3, color = "darkred") +
  theme(legend.position = "none", plot.title = element_text(hjust = 0.5))
print(bpCo)
print(bpAL)
