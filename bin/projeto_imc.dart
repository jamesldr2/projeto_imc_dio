import 'package:projeto_imc/domain/usecases/get_imc_usecase.dart';
import 'package:projeto_imc/domain/usecases/set_pessoa_usecase.dart';

void main(List<String> arguments) {
  print('=' * 80);
  print('\t\t\t\tPROJETO_IMC iniciado');
  print('=' * 80);
  final setPessoaUsecase = SetPessoaUsecase();
  final getImcUsecase = GetImcUsecase();
  final pessoa = setPessoaUsecase();
  final result = getImcUsecase(
    altura: pessoa.altura,
    peso: pessoa.peso,
  ).toStringAsFixed(2);
  print('=' * 80);
  print('\t\t\t\tResultado');
  print('=' * 80);
  print('Seu IMC é $result');
  print('-' * 80);
}
