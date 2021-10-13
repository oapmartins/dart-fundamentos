import 'pessoa.dart';

void main() {
  var pessoa = Pessoa(
    nome: 'Octávio',
    idade: 19,
    sexo: 'Masculino',
  );
  print(pessoa.nome);

  // Construtor nomeado
  var pessoaNomeado = Pessoa.semNome(
    idade: 19,
    sexo: 'Feminino',
  );
  print(pessoaNomeado.nome);

  var pessoaFabrica = Pessoa.fabrica('Octávio');
  print(pessoaFabrica.nome);
}
