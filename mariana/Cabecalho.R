# para alterar os cabeçalhos das planilhas de dados

arquivos <- c(
  "~/Downloads/AulaFCM/Trabalho Final/DoseCamada1_Run_0.csv",
  "~/Downloads/AulaFCM/Trabalho Final/DoseCamada2_Run_0.csv",
  "~/Downloads/AulaFCM/Trabalho Final/DoseCamada3_Run_0.csv",
  "~/Downloads/AulaFCM/Trabalho Final/DoseCamada4_Run_0.csv",
  "~/Downloads/AulaFCM/Trabalho Final/DoseCamada1_Run_1.csv",
  "~/Downloads/AulaFCM/Trabalho Final/DoseCamada2_Run_1.csv",
  "~/Downloads/AulaFCM/Trabalho Final/DoseCamada3_Run_1.csv",
  "~/Downloads/AulaFCM/Trabalho Final/DoseCamada4_Run_1.csv"
)

# ajustar os cabeçalhos se necessário
ajustar_cabecalho <- function(caminho) {
  conteudo <- readLines(caminho)
  novo_cabecalho <- c("X, Y, Z, Dose")
  # ver se o cabeçalho já está correto
  if (!all(conteudo[1] == novo_cabecalho)) {
    conteudo_modificado <- c(novo_cabecalho, conteudo[-(1:8)])
    writeLines(conteudo_modificado, caminho)
    message(paste("Cabeçalho ajustado para o arquivo:", caminho))
  } else {
    message(paste("Cabeçalho já correto no arquivo:", caminho))
  }
}

# aplicar a função no vetor arquivos
lapply(arquivos, ajustar_cabecalho)
