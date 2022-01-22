import 'dart:convert';

class Cidade {
  final int idUf;
  final String nome;
  Cidade({
    required this.idUf,
    required this.nome,
  });

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      idUf: map['id_uf'],
      nome: map['nome'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id_uf': idUf,
      'nome': nome,
    };
  }

  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));

  String toJson() => jsonEncode(toMap());
}
