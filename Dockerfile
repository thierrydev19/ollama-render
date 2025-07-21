FROM ghcr.io/jmorganca/ollama:latest

# ➜ choisis ici le modèle que ta machine peut supporter
RUN ollama pull llama3:8b-instruct-q4_K_M

# Autorise les connexions hors localhost
ENV OLLAMA_HOST 0.0.0.0

EXPOSE 11434
CMD ["ollama", "serve", "-p", "11434"]
