#!/bin/bash

echo "=== CALCULADORA ==="
echo "Digite o primeiro número:"
read n1

echo "Digite o segundo número:"
read n2

echo "Escolha a opração:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
read opcao

if ["$opcao" -eq 1 ]; then
	resultado=$((n1 + n2))
elif [ "$opcao" -eq 2 ]; then
	resultado=$((n1 - n2))
elif [ "$opcao" -eq 3 ]; then
	resultado=$((n1 * n2))
elif [ "$opcao" -eq 4 ]; then
	if [ "$n2" -eq 0]; then
		echo "Erro: divisão por zero!"
		exit 1
	fi
	resultado+$(echo "$n1 / $n2" | bc -1)
else
	echo "Opção inválida!"
	exit 1
fi

echo "Resultado: $resultado"

