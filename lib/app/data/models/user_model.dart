import 'dart:convert';

class UserModel {
  String id;
  String accessToken;
  String name;
  String phone;
  String avatar;
  String email;
  UserModel({
    required this.id,
    required this.accessToken,
    required this.name,
    required this.phone,
    required this.avatar,
    required this.email,
  });

  @override
  String toString() {
    return 'UserModel(id: $id, accessToken: $accessToken, name: $name, phone: $phone, avatar: $avatar, email: $email)';
  }

  UserModel copyWith({
    String? id,
    String? accessToken,
    String? name,
    String? phone,
    String? avatar,
    String? email,
  }) {
    return UserModel(
      id: id ?? this.id,
      accessToken: accessToken ?? this.accessToken,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      avatar: avatar ?? this.avatar,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'accessToken': accessToken,
      'name': name,
      'phone': phone,
      'avatar': avatar,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      accessToken: map['accessToken'],
      name: map['name'],
      phone: map['phone'],
      avatar: map['avatar'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  factory UserModel.empty() => UserModel(
      id: '', accessToken: '', name: '', phone: '', avatar: '', email: '');

  factory UserModel.fakeData() => UserModel(
        id: 'nvl123',
        accessToken: '123',
        name: 'NVL',
        phone: '123',
        avatar: 'nvl_avatar',
        email: 'nvl@gmail.com',
      );
}
