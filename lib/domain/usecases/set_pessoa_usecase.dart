import 'dart:io';

import '../entities/pessoa.dart';

class SetPessoaUsecase {
  Pessoa call() {
    return Pessoa(
      nome: _nameFromTerminal(),
      peso: _weightFromTerminal(),
      altura: _heightFromTerminal(),
    );
  }

  String _nameFromTerminal() {
    try {
      print('Digite seu nome');
      final name = stdin.readLineSync();
      if (name == null) {
        throw 'Nome inválido, tente novamente';
      }
      if (name.isEmpty) {
        throw 'Nome inválido, tente novamente';
      }
      return name;
    } catch (e) {
      print(e);
      print('-' * 80);
      return _nameFromTerminal();
    }
  }

  double _weightFromTerminal() {
    try {
      print('-' * 80);
      print('Escreva o valor de seu peso em quilogramas (kg)');
      var weight = stdin.readLineSync();
      weight = weight?.replaceAll(',', '.');
      if (weight == null) {
        throw 'Peso inválido, tente novamente';
      }
      if (double.tryParse(weight) == null) {
        throw 'Peso inválido, tente novamente';
      }
      return double.parse(weight);
    } catch (e) {
      print(e);
      return _weightFromTerminal();
    }
  }

  double _heightFromTerminal() {
    try {
      print('-' * 80);
      print('Escreva o valor de sua altura em metros (m)');
      var height = stdin.readLineSync();
      height = height?.replaceAll(',', '.');
      height?.replaceAll(',', '.');
      if (height == null) {
        throw 'Altura inválida, tente novamente';
      }
      if (double.tryParse(height) == null) {
        throw 'Altura inválida, tente novamente';
      }
      return double.parse(height);
    } catch (e) {
      print(e);
      return _heightFromTerminal();
    }
  }
}
