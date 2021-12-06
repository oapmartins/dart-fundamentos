Future<void> main() async {
  print('Inicio do Main');
  var mensagem = await processo1();
  var mensagem2 = await processo2();
  try {
    await processo3();
  } catch (e) {
    print('Erro na chamada do processo 3');
  }

  print('Fim do Main');
}

Future<String> processo1() {
  print('Inicio Processo 1');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do Processo 3');
}

Future<String> processo2() {
  print('Inicio Processo 2');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do Processo 3');
}

Future<String> processo3() {
  print('Inicio Processo 3');
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}
