String? nome;

void main() {
  var sobrenome = 'Augusto';
  var nomeCompleto = (nome ?? 'Octávio ') + sobrenome;
  print(nomeCompleto);
}
