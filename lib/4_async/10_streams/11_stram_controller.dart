import 'dart:async';

Future<void> main() async {
  print('Início Stram controller');

  final streamController = StreamController<Pessoa>.broadcast();

  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream.listen((pessoa) => print('Seja bem vindo ${pessoa.nome}'));

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    inStream.add(Pessoa(nome: 'Octávio $numero'));
    await Future.delayed(Duration(milliseconds: 500));
  }

  print('Fim Stram controller');
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
