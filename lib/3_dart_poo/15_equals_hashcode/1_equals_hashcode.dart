import 'pessoa.dart';

void main() {
  var p1 = Pessoa(nome: 'Octávio', email: 'octaviomartins10@gmail.com');
  var p2 = Pessoa(nome: 'Octávio', email: 'octaviomartins10@gmail.com');
  // String p2 = 'Octávio';

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }
}
