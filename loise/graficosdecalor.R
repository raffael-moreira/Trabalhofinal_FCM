library(ggplot2)
library(scales)
library(gridExtra)
library(dplyr)


camada1AL <- read.csv("~/Trabalhofinal_FCM/Trabalhofinal_FCM/mariana/DoseCamada1_Run_0.csv")
camada2AL <- read.csv("~/Trabalhofinal_FCM/Trabalhofinal_FCM/mariana/DoseCamada2_Run_0.csv")
camada3AL <- read.csv("~/Trabalhofinal_FCM/Trabalhofinal_FCM/mariana/DoseCamada3_Run_0.csv")
camada4AL <- read.csv("~/Trabalhofinal_FCM/Trabalhofinal_FCM/mariana/DoseCamada4_Run_0.csv")
camada1Co <- read.csv("~/Trabalhofinal_FCM/Trabalhofinal_FCM/mariana/DoseCamada1_Run_1.csv")
camada2Co <- read.csv("~/Trabalhofinal_FCM/Trabalhofinal_FCM/mariana/DoseCamada2_Run_1.csv")
camada3Co <- read.csv("~/Trabalhofinal_FCM/Trabalhofinal_FCM/mariana/DoseCamada3_Run_1.csv")
camada4Co <- read.csv("~/Trabalhofinal_FCM/Trabalhofinal_FCM/mariana/DoseCamada4_Run_1.csv")


#Criação dos gráficos de mapa de calor para Cobalto-60
Co1 <- ggplot(camada1Co, aes(x = X, y = Y, fill = Dose)) +
  geom_tile() +
  scale_fill_gradientn(
    colors = c("darkblue","blue", "cyan", "yellow", "red"),
    limits = c(1e-06, 1.5e-06),
    oob = squish,
    name = "Dose"
  ) +
  labs(x = "X", y = "Y", title = "Dose Absorvida - Camada 1 - Cobalto-60") +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5)
  )+
  coord_fixed()

Co2 <- ggplot(camada2Co, aes(x = X, y = Y, fill = Dose)) +
  geom_tile() +
  scale_fill_gradientn(
    colors = c("darkblue","blue", "cyan", "yellow", "red"),
    limits = c(1e-06, 1.5e-06),
    oob = squish,
    name = "Dose"
  ) +
  labs(x = "X", y = "Y", title = "Dose Absorvida - Camada 2 - Cobalto-60") +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5)
  )+
  coord_fixed()

Co3 <- ggplot(camada3Co, aes(x = X, y = Y, fill = Dose)) +
  geom_tile() +
  scale_fill_gradientn(
    colors = c("darkblue","blue", "cyan", "yellow", "red"),
    limits = c(1e-06, 1.5e-06),
    oob = squish,
    name = "Dose"
  ) +
  labs(x = "X", y = "Y", title = "Dose Absorvida - Camada 3 - Cobalto-60") +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5)
  )+
  coord_fixed()

Co4 <- ggplot(camada4Co, aes(x = X, y = Y, fill = Dose)) +
  geom_tile() +
  scale_fill_gradientn(
    colors = c("darkblue","blue", "cyan", "yellow", "red"),
    limits = c(1e-06, 1.5e-06),
    oob = squish,
    name = "Dose"
  ) +
  labs(x = "X", y = "Y", title = "Dose Absorvida - Camada 4 - Cobalto-60") +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5)
  )+
  coord_fixed()

grid.arrange(Co1, Co2, Co3, Co4, ncol = 2)

#Criação dos gráficos de mapa de calor para Acelerador Linear
AL1 <- ggplot(camada1AL, aes(x = X, y = Y, fill = Dose)) +
  geom_tile() +
  scale_fill_gradientn(
    colors = c("darkblue","blue", "cyan", "yellow", "red"),
    limits = c(1.5e-06, 4e-06),
    oob = squish, 
    name = "Dose"
  ) +
  labs(x = "X", y = "Y", title = "Dose Absorvida - Camada 1 - Acelerador Linear") +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5)
  )+
  coord_fixed()

AL2 <- ggplot(camada2AL, aes(x = X, y = Y, fill = Dose)) +
  geom_tile() +
  scale_fill_gradientn(
    colors = c("darkblue","blue", "cyan", "yellow", "red"),
    limits = c(1.5e-06, 4e-06),
    oob = squish,
    name = "Dose"
  ) +
  labs(x = "X", y = "Y", title = "Dose Absorvida - Camada 2 - Acelerador Linear") +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5)
  )+
  coord_fixed()

AL3 <- ggplot(camada3AL, aes(x = X, y = Y, fill = Dose)) +
  geom_tile() +
  scale_fill_gradientn(
    colors = c("darkblue","blue", "cyan", "yellow", "red"),
    limits = c(1.5e-06, 4e-06),
    oob = squish,
    name = "Dose"
  ) +
  labs(x = "X", y = "Y", title = "Dose Absorvida - Camada 3 - Acelerador Linear") +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5)
  )+
  coord_fixed()

AL4 <- ggplot(camada4AL, aes(x = X, y = Y, fill = Dose)) +
  geom_tile() +
  scale_fill_gradientn(
    colors = c("darkblue","blue", "cyan", "yellow", "red"),
    limits = c(1.5e-06, 4e-06),
    oob = squish,
    name = "Dose"
  ) +
  labs(x = "X", y = "Y", title = "Dose Absorvida - Camada 4 - Acelerador Linear") +
  theme_minimal() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5)
  )+
  coord_fixed()

grid.arrange(AL1, AL2, AL3, AL4, ncol = 2)
print(AL4)

ggsave("~/Trabalhofinal_FCM/Trabalhofinal_FCM/loise/")