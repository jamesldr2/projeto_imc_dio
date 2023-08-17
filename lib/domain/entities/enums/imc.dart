enum IMC {
  muitoAbaixoDoPeso('Muito abaixo do peso'),
  abaixoDoPeso('Abaixo do peso'),
  pesoNormal('Peso normal'),
  acimaDoPeso('Acima do peso'),
  obesidade1('Obesidade I'),
  obesidade2('Obesidade II (severa)'),
  obesidade3('Obesidade III (mórbida)');

  final String _label;
  const IMC(this._label);

  static IMC fromValue(double imc) {
    if (imc <= 17) {
      return IMC.muitoAbaixoDoPeso;
    }
    if (imc <= 18.49) {
      return IMC.abaixoDoPeso;
    }
    if (imc <= 24.99) {
      return IMC.pesoNormal;
    }
    if (imc <= 29.99) {
      return IMC.acimaDoPeso;
    }
    if (imc <= 34.99) {
      return IMC.obesidade1;
    }
    if (imc <= 39.99) {
      return IMC.obesidade2;
    }
    return IMC.obesidade3;
  }

  @override
  String toString() => _label;
}
