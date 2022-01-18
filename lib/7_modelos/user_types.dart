import 'dart:convert';

class UserTypes {
  final String id;
  final String userId;
  final String name;
  UserTypes({
    required this.id,
    required this.userId,
    required this.name,
  });

  factory UserTypes.fromMap(Map<String, dynamic> map) {
    return UserTypes(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  factory UserTypes.fromJson(String source) =>
      UserTypes.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() => 'UserTypes(id: $id, userId: $userId, name: $name)';
}
