# Use a imagem oficial do PostgreSQL
FROM postgres:15

# Define variáveis de ambiente padrão
ENV POSTGRES_USER=admin \
    POSTGRES_PASSWORD=admin \
    POSTGRES_DB=mydatabase

# Copie arquivos de inicialização SQL, se necessário (opcional)
# Por exemplo, para criar tabelas ou popular dados iniciais
# COPY init.sql /docker-entrypoint-initdb.d/

# Exponha a porta padrão do PostgreSQL
EXPOSE 5432

# Comando padrão
CMD ["postgres"]