// Caracteristicas
// Comportamentos

class Camiseta {
  // Atributos
  String? tamanho;
  String? cor;
  String? marca;

  // Funções dentro de Classes são chamados de métodos.
  String tipoLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}
