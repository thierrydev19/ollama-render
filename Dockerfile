{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "571fc9d0",
   "metadata": {},
   "outputs": [],
   "source": [
    "FROM ghcr.io/jmorganca/ollama:latest\n",
    "\n",
    "# Choisis ici le modèle selon la puissance de l'instance\n",
    "RUN ollama pull llama3:8b-instruct-q4_K_M\n",
    "\n",
    "# Autorise les connexions externes\n",
    "ENV OLLAMA_HOST 0.0.0.0\n",
    "\n",
    "EXPOSE 11434\n",
    "CMD [\"ollama\", \"serve\", \"-p\", \"11434\"]\n"
   ]
  }
 ],
 "metadata": {
  "language_info": {
   "name": "python"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
