// Isso aqui é uma classe abstrata
// Pois tem métodos implementados
abstract class CarroClasseAbstrata {
  void velocidadeMaxima() {}
}

// Isso é uma interface
// Pois não tem nenhum método implementado
// Não devo colocar métodods implementados dentro da Interface.
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
