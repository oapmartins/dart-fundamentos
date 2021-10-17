void main() {
  Pessoa()
    ..nome = 'Octávio'
    ..email = 'octaviomartins10@gmail.com'
    ..site = 'teste.com.br'
    ..printPessoa();

  // pessoa.nome = 'Octávio Augusto';
  // pessoa.email = 'octaviomartins10@gmail.com';
  // pessoa.site = 'octaviomartins.com.br';

  var mapa = <String, String>{}
    ..putIfAbsent('nome', () => 'Octávio')
    ..putIfAbsent('idade', () => '19')
    ..putIfAbsent('email', () => 'octaviomartins10@gmail.com');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
    Pessoa:
      Nome:  $nome
      Email: $email
      Site:  $site
   ''');
  }
}
