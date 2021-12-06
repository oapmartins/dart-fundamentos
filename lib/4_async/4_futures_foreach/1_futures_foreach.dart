import '../../3_dart_poo/14_assignment_operators/1_assignment_operators.dart';

Future<void> main() async {
  var nomes = ['Octávio', 'Flavio', 'Marcela'];
  print('Inicio');
  nomes.forEach((nome) async {
    print(await saudacao(nome));
  });
  print('Fim');
}

Future<String> saudacao(String nome) {
  return Future.delayed(Duration(seconds: 1), () => 'Olá $nome');
}
