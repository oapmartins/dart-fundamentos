import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

// Variáveis de Níveis superior e atributos de classe
// Não são auto-promovidas
Carro golCarro2 = Uno();

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Uno();

  // Quando checamos se a variável é(is) de um tipo,
  // caso ela seja, o proprio dart converte essa instancia
  // para o tipo verificado.
  if (golCarro is Gol) {
    var tipoRodas = 'Tipo de rodas: ${(golCarro).tipoRodas()}';
    print(tipoRodas);
  }

  // Variáveis de nível superior precisam ser checadas e seus valores convertidos.
  if (golCarro2 is Gol) {
    var tipoRodas2 = 'Tipo de rodas: ${(golCarro2 as Gol).tipoRodas()}';
    print(tipoRodas2);
  }

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
}

void printarDadosDoCarro(Carro carro) {
  print('''
    Carro: 
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Maxima: ${carro.velocidadeMaxima()}
      Tipo de Rodas: ${carro is Gol ? carro.tipoRodas() : 'Não disponível'}
  ''');
}
