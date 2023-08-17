import 'package:projeto_imc/domain/entities/enums/imc.dart';
import 'package:test/test.dart';

void main() {
  group('IMC test', () {
    final count = 41;
    final imcs = <IMC>[];
    for (var i = 0; i <= count; i++) {
      test('for IMC $i', () {
        final imc = IMC.fromValue(i.toDouble());
        imcs.add(imc);
        expect(imc, isA<IMC>());
        expect(IMC.values.contains(imc), true);
      });
    }
    test('- tested all IMCs', () {
      expect(imcs.toSet().length, IMC.values.length);
    });
  });
}
