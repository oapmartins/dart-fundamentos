class Produto {
  final int _id;
  final String nome;
  final double _preco;

  // Produto(this.id, this.nome, this.preco);
  Produto({
    required int id,
    required this.nome,
    required double preco,
  })  : _id = id,
        _preco = preco;

  factory Produto.fabrica({
    required int id,
    required String nome,
    required double preco,
  }) {
    return Produto(id: id, nome: nome, preco: preco);
  }
}
