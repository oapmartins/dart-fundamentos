import 'dart:convert';

class UserTypesRefatorado {
  final String id;
  final String userId;
  final String name;
  UserTypesRefatorado({
    required this.id,
    required this.userId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  factory UserTypesRefatorado.fromMap(Map<String, dynamic> map) {
    return UserTypesRefatorado(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypesRefatorado.fromJson(String source) =>
      UserTypesRefatorado.fromMap(json.decode(source));
}
