void main() {
  print('Inicio Processo 1');
  processo2();
  processo3().then((mensagem) => print(mensagem));
  processo4().then((mensagem) => print('Mensagem Processo 4 : $mensagem'),
      onError: (error) {
    print('Erro ao Executar o processo 4 on error THEN');
  });

  processo4()
      .then((mensagem) => print('Mensagem Processo 4 : $mensagem'))
      .catchError((error) => print('Erro ao Executar o processo 4 CATCHERROR'));
  print('Fim Processo 1');

  processo3()
      .then((value) => print(value))
      .whenComplete(() => print('Finalizou com erro'));
}

Future<void> processo2() async {
  print('Inicio Processo 2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 5) {
      i++;
      print(i);
    }
    print('Fim Processo 2');
  });
}

Future<String> processo3() {
  print('Inicio Processo 3');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do Processo 3');
}

Future<String> processo4() {
  print('Inicio Processo 4');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}
