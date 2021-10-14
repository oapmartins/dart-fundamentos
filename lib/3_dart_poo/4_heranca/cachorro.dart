import 'animal.dart';

class Cachorro extends Animal {
  Cachorro({required int idade}) : super(idade: idade);

  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
