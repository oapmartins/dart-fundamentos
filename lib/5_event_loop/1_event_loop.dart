import 'dart:async';

void main() {
  print('Inicio Main');
  scheduleMicrotask(() => print('Microtask #1'));
  Future.delayed(Duration(seconds: 1), () => print('Future #1 dalyed'));
  Future(() => print('Future #2 dalyed'));
  Future(() => print('Future #3 dalyed'));
  print('Fim Main');
}
