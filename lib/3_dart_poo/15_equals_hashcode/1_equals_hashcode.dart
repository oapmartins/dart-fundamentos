import 'pessoa.dart';

void main() {
  var p1 = Pessoa(
    nome: 'Octávio',
    email: 'octaviomartins10@gmail.com',
    telefone: '98323443243',
  );
  var p2 = Pessoa(
    nome: 'Octávio',
    email: 'octaviomartins10@gmail.com',
    telefone: '983243243',
  );
  // String p2 = 'Octávio';

  print("Intância do Hash code P1: ${p1.hashCode}");
  print("Intância do Hash code p2: ${p2.hashCode}");
  print(p1);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }
}
