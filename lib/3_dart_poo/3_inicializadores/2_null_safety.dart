import 'cliente.dart';

// Tomar cuidado com o LATE e o !(Force non null).

void main() {
  var cliente = Cliente(nome: 'Octávio');
  cliente.nome = 'Teste';
  cliente.nome = '3243';
  print(cliente.nome);
}
