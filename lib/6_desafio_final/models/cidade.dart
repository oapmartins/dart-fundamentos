import 'dart:convert';

class Cidade {
  final String nome;
  Cidade({
    required this.nome,
  });

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(nome: map['nome']);
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
    };
  }

  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));

  String toJson() => jsonEncode(toMap());
}
