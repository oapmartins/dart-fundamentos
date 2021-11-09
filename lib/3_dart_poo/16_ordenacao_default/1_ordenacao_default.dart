import 'cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Octávio', telefone: '986102226');
  var c2 = Cliente(nome: 'Luan', telefone: '986102226');
  var c3 = Cliente(nome: 'Marcos', telefone: '986102226');
  var c4 = Cliente(nome: 'Helena', telefone: '986102226');

  var lista = [c1, c2, c3, c4];
  print(lista);

  lista.sort();
  print(lista);
}
