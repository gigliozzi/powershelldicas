# Usa a imagem oficial do Ghost v6 (leve e otimizada para produção)
FROM ghost:6-alpine

# Define o fuso horário (opcional, ajuste se quiser outro)
ENV TZ=America/Sao_Paulo

# Copia todo o conteúdo customizado para o container
# - A pasta /var/lib/ghost/content é onde ficam temas, imagens, banco de dados etc.
COPY content /var/lib/ghost/content

# Copia o arquivo de configuração de produção
COPY config.production.json /var/lib/ghost/config.production.json
