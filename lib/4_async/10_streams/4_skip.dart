import 'dart:async';

Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).skip(2);

  await for (var i in stream) {
    print('O número que chegou no await é: $i');
  }

  print('Fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
