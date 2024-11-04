#!/bin/sh

if [ "$#" -lt 2 ]; then
    echo "Uso: $0 <idioma:idioma> <texto>"
    echo "Exemplo: $0 pt-BR:en 'ola mundo'"
    exit 1
fi

lang_pair=$1  # Ex: pt-BR:en
text="$2"     # Texto a ser traduzido

# Junte o texto caso haja espaços
shift 2
if [ "$#" -gt 0 ]; then
    text="$text $*"
fi

from_lang=$(echo "$lang_pair" | cut -d':' -f1)
to_lang=$(echo "$lang_pair" | cut -d':' -f2)

api_url="https://translate-google-api-v1.vercel.app/translate"

# Enviando a requisição POST com curl
response=$(curl -s -X POST "$api_url" \
    -H "Content-Type: application/json" \
    -d "{\"text\":\"$text\",\"from\":\"$from_lang\",\"to\":\"$to_lang\"}")

# Extraindo a tradução do JSON da resposta
translated_text=$(echo "$response")

if [ "$translated_text" = "null" ]; then
    echo "Erro ao traduzir: $response"
else
    echo $translated_text
fi
