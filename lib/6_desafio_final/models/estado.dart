import 'dart:convert';

class Estado {
  final String sigla;
  final String nome;
  Estado({
    required this.sigla,
    required this.nome,
  });

  factory Estado.fromMap(Map<String, dynamic> map) {
    return Estado(
      sigla: map['sigla'],
      nome: map['nome'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "sigla": sigla,
      "nome": nome,
    };
  }

  factory Estado.fromJson(String source) => Estado.fromMap(jsonDecode(source));

  String toJson() => jsonEncode(toMap());
}
