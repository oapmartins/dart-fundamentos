import 'dart:async';

Future<void> main() async {
  print('Inicio Main');
  scheduleMicrotask(() => print('Microtask #1'));
  await Future.delayed(Duration(seconds: 1), () => print('Future #1 dalyed'));
  Future(() {
    var i = 0;
    while (i < 20000) {
      i++;
    }
    print('Future #2 dalyed');
  });
  await Future(() => print('Future #3 dalyed'));
  print('Fim Main');
}
