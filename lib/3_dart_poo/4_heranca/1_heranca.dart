import 'cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10);
  cachorro.tamanho = 'pequeno';

  print('''
    Cachorro:
      Tamanho: ${cachorro.recuperarIdade()}
      Idade Cachorro: ${cachorro.idade}
      Idade Cachorro Humano: ${cachorro.calcularIdadeHumana()}
  ''');
}
