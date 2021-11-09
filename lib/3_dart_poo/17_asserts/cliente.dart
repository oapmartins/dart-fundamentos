class Cliente {
  String? nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;
  String? teste;

  Cliente({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
    this.teste,
  }) : assert(
          (cpf != null)
              ? nome != null && razaoSocial == null && cnpj == null
              : true,
          'Você enviou cpf junto com cnpj',
        );
}
