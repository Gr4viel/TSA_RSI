#!/bin/bash

ficheiro="disciplinas.txt"

if [[ ! -f $ficheiro ]]; then
  echo "O ficheiro $ficheiro não existe!"
  exit 1
fi

mkdir -p disciplinas

