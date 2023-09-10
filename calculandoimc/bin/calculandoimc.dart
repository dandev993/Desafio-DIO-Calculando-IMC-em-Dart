import 'dart:io';

import 'package:calculandoimc/Pessoa.dart';

void main() {
  String nome;
  double peso;
  double altura;

  while (true) {
    try {
      print('Digite seu nome:');
      nome = stdin.readLineSync()!;
      break;
    } catch (e) {
      print('Por favor, digite um número válido.');
    }
  }

  while (true) {
    try {
      print('Digite seu peso em kg:');
      peso = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('Por favor, digite um número válido.');
    }
  }

  while (true) {
    try {
      print('Digite sua altura em metros:');
      altura = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('Por favor, digite um número válido.');
    }
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);
  double imc = pessoa.calcularIMC();
  String resultado = '';

  if (imc < 18.5) {
    resultado = 'abaixo do peso ideal';
  } else if (imc >= 18.5 && imc < 25) {
    resultado = 'no peso ideal';
  } else if (imc >= 25 && imc < 30) {
    resultado = 'acima do peso ideal';
  } else {
    resultado = 'obeso';
  }

  print('$nome, seu IMC é ${imc.toStringAsFixed(2)} e você está $resultado.');
}
