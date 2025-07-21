FROM ollama/ollama:latest

RUN ollama pull llama3:8b-instruct-q4_K_M

ENV OLLAMA_HOST=0.0.0.0
EXPOSE 11434
CMD ["ollama", "serve", "-p", "11434"]

