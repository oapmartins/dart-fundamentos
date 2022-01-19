import 'dart:convert';

import 'package:dart_fundamentos/4_async/8_repositories/models/user_types.dart';

class User {
  final String id;
  final String name;
  final String userName;
  final List<UserTypes> userTypes;
  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.userTypes,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['username'] ?? '',
      userTypes: map['userTypes']
              ?.map()<UserTypes>((type) {
                return UserTypes.fromMap(type);
              })
              .toList() ??
          <UserTypes>[],
    );
  }

  factory User.fromJson(String source) => User.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'userName': userName,
      'userTypes': userTypes.map((e) => e.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'User(id: $id, name: $name, userName: $userName, userTypes: $userTypes)';
  }
}
