import 'package:dart_fundamentos/4_tratamento_nulos/2_null_aware_operator.dart';

void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Rodrigo', 'Guilherme', 'Octavio', 'Sandra'];

  // For convencional.
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  // For in
  for (var numero in numeros) {
    print(numero);
  }
}
