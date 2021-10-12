import 'camiseta.dart';

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

  print('''
    Tamanho: ${camisetaNike.tamanho}
    Cor: ${camisetaNike.cor}
    Marca: ${camisetaNike.marca}
    Tipo Lavagem: ${camisetaNike.tipoLavagem()}
  ''');

  var camisetaAddidas = Camiseta();
  camisetaAddidas.tamanho = 'M';
  camisetaAddidas.cor = 'Vermelha';
  camisetaAddidas.marca = 'Adidas';

  print('''
    Tamanho: ${camisetaAddidas.tamanho}
    Cor: ${camisetaAddidas.cor}
    Marca: ${camisetaAddidas.marca}
    Tipo Lavagem: ${camisetaAddidas.tipoLavagem()}
  ''');
}
