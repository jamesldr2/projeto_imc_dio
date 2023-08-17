class Pessoa {
  final String nome;
  final double peso;
  final double altura;
  const Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  Pessoa copyWith({
    String? nome,
    double? peso,
    double? altura,
  }) {
    return Pessoa(
      nome: nome ?? this.nome,
      peso: peso ?? this.peso,
      altura: altura ?? this.altura,
    );
  }

  @override
  String toString() => 'Pessoa(nome: $nome, peso: $peso, altura: $altura)';
}
