import 'dart:async';

Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.where((numero) => numero % 6 == 0).take(3);

  stream.listen((numero) {
    print('Listen value: $numero');
  });

  print('Fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
