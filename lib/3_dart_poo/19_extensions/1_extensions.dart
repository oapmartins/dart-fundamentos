import 'saudacao_string_extension.dart';
import 'pessoa_saudacao_extension.dart';
import 'pessoa.dart';

void main() {
  String nome = 'Octávio Augusto';
  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Josélito');

  print(p1.saudacao());
}
