class Pessoa {
  String nome;
  String email;
  String telefone;
  Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
  });

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) true;

  //   return other is Pessoa && other.nome == nome && other.email == email;
  // }

  // int get hashCode {
  //   return nome.hashCode ^ email.hashCode;
  // }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa &&
        other.nome == nome &&
        other.email == email &&
        other.telefone == telefone;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ telefone.hashCode;

  @override
  String toString() =>
      'Pessoa(nome: $nome, email: $email, telefone: $telefone)';
}
