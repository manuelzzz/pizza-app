import 'dart:convert';

class MyUserEntity {
  final String userId;
  final String email;
  final String name;
  final bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

  factory MyUserEntity.fromMap(Map<String, dynamic> map) {
    return MyUserEntity(
      userId: map['userId'] as String,
      email: map['email'] as String,
      name: map['name'] as String,
      hasActiveCart: map['hasActiveCart'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyUserEntity.fromJson(String source) =>
      MyUserEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
