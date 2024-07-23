# Utiliza la imagen base "ollama/ollama" como punto de partida
FROM ollama/ollama

# Copia los archivos de tu aplicación al contenedor
COPY . /app

# Instala Python y Pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Instala Flask u otras dependencias específicas que necesites para tu aplicación
RUN pip install Flask

# Clona e instala LLaMA 3
RUN git clone https://github.com/meta-llama/llama3.git /tmp/llama3 \
    && cd /tmp/llama3 \
    && pip install -e .

# Volumen para persistir datos de Ollama
VOLUME /root/.ollama

# Exponer el puerto en el que correrá la aplicación Flask y el puerto de LLaMA 3
EXPOSE 5000
EXPOSE 11434

# Comandos para iniciar Ollama y LLaMA 3 y ejecutar la aplicación Flask
CMD /bin/bash -c "docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama && docker exec ollama ollama run llama3 && python /app/app.py"