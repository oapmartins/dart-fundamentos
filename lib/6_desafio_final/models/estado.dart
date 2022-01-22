import 'dart:convert';

class Estado {
  final int id;
  final String sigla;
  final String nome;
  Estado({
    required this.id,
    required this.sigla,
    required this.nome,
  });

  factory Estado.fromMap(Map<String, dynamic> map) {
    return Estado(
      id: map['id'],
      sigla: map['sigla'],
      nome: map['nome'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "sigla": sigla,
      "nome": nome,
    };
  }

  factory Estado.fromJson(String source) => Estado.fromMap(jsonDecode(source));

  String toJson() => jsonEncode(toMap());
}
