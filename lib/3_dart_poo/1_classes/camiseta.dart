// Caracteristicas
// Comportamentos

class Camiseta {
  // Atributos de instância.
  String? tamanho;
  String? _cor;
  String? marca;

  // Atributos de Classe.
  static const String nome = 'Camiseta';

  // Metodos de Classe
  static String recuperarNome() => nome;

  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser verde');
    }
    _cor = cor;
  }

  // Funções dentro de Classes são chamados de métodos.
  String tipoLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}
