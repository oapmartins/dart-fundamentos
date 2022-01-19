import 'dart:async';

Future<void> main() async {
  print('Inicio');

  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

  await for (var i in stream) {
    print(i);
  }

  print('Fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
