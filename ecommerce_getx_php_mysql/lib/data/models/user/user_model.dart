// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String createTime;
  final String approve;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.createTime,
    required this.approve,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? createTime,
    String? approve,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      createTime: createTime ?? this.createTime,
      approve: approve ?? this.approve,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'users_id': id,
      'users_name': name,
      'users_email': email,
      'users_phone': phone,
      'users_createtime': createTime,
      'users_approve': approve,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['users_id'].toString(),
      name: map['users_name'].toString(),
      email: map['users_email'].toString(),
      phone: map['users_phone'].toString(),
      createTime: map['users_createtime'].toString(),
      approve: map['users_approve'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, createTime: $createTime, approve: $approve)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.email == email && other.phone == phone && other.createTime == createTime && other.approve == approve;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ email.hashCode ^ phone.hashCode ^ createTime.hashCode ^ approve.hashCode;
  }
}
