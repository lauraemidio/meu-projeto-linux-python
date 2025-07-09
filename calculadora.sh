#!/bin/bash

echo "Calculadora Simples"
echo "Digite o primeiro número:"
read num1
echo "Digite o segundo número:"
read num2


echo "Escolha a operação: + - * /"
read op

case $op in
   +) resultado=$((num1 + num2));;
   -) resultado=$((num1 - num2));;
   \*) resultado=$((num1 - num2));;
    /)

     if [ $num2-ne 0]; then
        resultado=$((num1 / num2))
     else
      echo "Erro: divisão por zero"
      exit 1
    fi
    ;;
  *) echo "Operação inválida"; exit 1;;
esac

echo "Resultado: $resultado"

