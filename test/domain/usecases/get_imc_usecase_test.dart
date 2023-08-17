import 'dart:math';

import 'package:projeto_imc/domain/entities/enums/imc.dart';
import 'package:projeto_imc/domain/usecases/get_imc_usecase.dart';
import 'package:test/test.dart';

void main() {
  group('GetImcUsecase Test', () {
    final maxCount = 100;
    for (var i = 0; i < maxCount; i++) {
      test('calculo IMC ${i + 1}/$maxCount', () {
        final altura = 1.00 + i / 100;
        final peso = 30.0 + i;
        final usecase = GetImcUsecase(altura: altura, peso: peso);
        final result = usecase.value();
        final expectedResult = (peso / pow(altura, 2)).toStringAsFixed(2);
        expect(result, expectedResult);
      });
      test('label IMC ${i + 1}/$maxCount', () {
        final altura = 1.00 + i / 100;
        final peso = 30.0 + i;
        final usecase = GetImcUsecase(altura: altura, peso: peso);
        final result = usecase.label();
        final expectedResult = IMC.fromValue(peso / (altura * altura));
        expect(result, expectedResult);
      });
    }
  });
}
