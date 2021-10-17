import 'package:dart_fundamentos/3_dart_poo/10_mixins/joao.dart';

void main() {
  var joao = Joao();

  print('''
    João:
      Habilidade: ${joao.habilidade()}
      Dançar:     ${joao.dancar()}
      Cantar:     ${joao.cantar()}
  ''');
}
