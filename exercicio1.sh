#!/bin/bash

#script que pergunta nome do curso, quantidade de disciplinas e nomes das disciplinas
# E adiciona tudo a um ficheiro txt

arquivo="disciplinas.txt"

> $arquivo

echo "Qual é o nome do curso que está a frequentar?"
read curso

echo "Curso: $curso" >> $arquivo
echo "Disciplinas do curso $curso:" >> $arquivo

echo "Quantas disciplinas quer adicionar?"
read quantidade

for ((i=1; i<=quantidade; i++)) # Loop para repetir a pergunta o número de vezes que colocamos em cima.

do
  echo "Qual é a $iª disciplina?"
  read disciplina
  echo "$disciplina" >> $arquivo
done

echo "As disciplinas foram guardadas no ficheiro!"