import 'dart:io';

import 'fazer.dart';

@Fazer(
  quem: 'Octávio',
  oque: 'Testando anotações de classe',
)
@gzip
class Pessoa {
  @Fazer(
    quem: 'Octávio no atributo',
    oque: 'Testando anotações do atributo',
  )
  String? nome;

  @Fazer(
    quem: 'Octávio no MÉTODO',
    oque: 'Testando anotações do método',
  )
  void fazerAlgo() {}
}
