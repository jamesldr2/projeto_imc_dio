import 'dart:math';

import 'package:projeto_imc/domain/entities/enums/imc.dart';

class GetImcUsecase {
  final double altura;
  final double peso;
  const GetImcUsecase({
    required this.altura,
    required this.peso,
  });

  IMC label() {
    return IMC.fromValue(peso / pow(altura, 2));
  }

  String value() {
    return (peso / pow(altura, 2)).toStringAsFixed(2);
  }
}
