import 'dart:convert';

import 'package:dart_fundamentos/4_async/7_modelos/user_types_refatorado.dart';

class UserRefatorado {
  final String id;
  final String name;
  final String userName;
  final List<UserTypesRefatorado> userTypes;
  UserRefatorado({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': userName,
      'user_types': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory UserRefatorado.fromMap(Map<String, dynamic> map) {
    return UserRefatorado(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['username'] ?? '',
      userTypes: List<UserTypesRefatorado>.from(
          map['user_types']?.map((x) => UserTypesRefatorado.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRefatorado.fromJson(String source) =>
      UserRefatorado.fromMap(json.decode(source));
}
