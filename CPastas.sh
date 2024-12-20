#!/bin/bash

ficheiro="disciplinas.txt"

if [[ ! -f $ficheiro ]]; then
  echo "O ficheiro $ficheiro não existe!"
  exit 1
fi

mkdir -p disciplinas

tail -n +3 "$ficheiro" | while IFS= read -r disciplina # lê o ficheiro linha a linha apartir da terceira linha
do
  if [[ -n "$disciplina" ]]; then # verifica quando acaba o ficheiro
    mkdir -p "disciplinas/$disciplina"
    echo "Pasta criada para a disciplina: $disciplina"
  fi
done

echo "Pastas para as disciplinas foram criadas."