#!/bin/bash

comprimento=6

senha=$(tr -dc 'A-Za-z0-9_@#%' < /dev/urandom | head -c $comprimento)
#tr -dc "agarra" nos carateres escolhidos para a password e elimina os que não foram escolhidos
#head -c recebe o número de carateres e exibe-os consoante o número que colocamos no comprimento

echo "$senha"
