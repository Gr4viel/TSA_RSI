#!/bin/bash

ficheiro="disciplinas.txt"

if [[ ! -f $ficheiro ]]; then
  echo "O ficheiro $ficheiro não existe!"
  exit 1
fi

mkdir -p disciplinas

ignorar="e|de|da|do|dos|das|a|o|as|os"

tail -n +3 "$ficheiro" | while IFS= read -r disciplina # lê o ficheiro linha a linha a partir da terceira linha
do
  if [[ -n "$disciplina" ]]; then # verifica se a linha não está vazia

    # Remove palavras ignoradas e gera as iniciais
    siglas=$(echo "$disciplina" | 
      tr ' ' '\n' |                      # Divide as palavras em linhas
      grep -ivE "^($ignorar)$" |         # Remove palavras ignoradas
      grep -o '^\w' |                    # Extrai a primeira letra de cada palavra
      tr 'a-z' 'A-Z' |                   # Converte para maiúsculas
      tr -d '\n')                        # Junta as iniciais em uma única linha

    if [[ -n "$siglas" ]]; then
      mkdir -p "disciplinas/$siglas"
      echo "Pasta criada para a disciplina: $siglas"
    else
      echo "Não foi possível criar pasta para a disciplina: $disciplina"
    fi
  fi
done

echo "Pastas para as disciplinas foram criadas."