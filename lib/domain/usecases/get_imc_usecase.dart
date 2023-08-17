import 'dart:math';

class GetImcUsecase {
  double call({required double altura, required double peso}) {
    return peso / pow(altura, 2);
  }
}
