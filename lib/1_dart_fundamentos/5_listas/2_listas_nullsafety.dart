void main() {
  // Não aceita nullo
  var nomes = <String>[];

  // Aceita nullo
  List<String>? nomeNulos;

  // Os itens da lista não podem ser nullos.
  var nomesInternoNaoAceitasNulos = <String>['Octávio'];

  // A lista aceita nullos
  var nomesInternoAceitasNulos = <String?>[null];

  // A lista e os itens da lista podem ser nullos.
  List<String?>? nomesInternoAceitasNulos1 = [null];
}
