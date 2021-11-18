import 'pessoa.dart';

void main() {
  var p1 = const Pessoa(nome: 'Octávio', idade: 19);
  var p2 = const Pessoa(nome: 'Octávio', idade: 19);

  print(p1 == p2);
}
