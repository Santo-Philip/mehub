import 'package:hive_flutter/hive_flutter.dart';

part 'signup_models.g.dart';

@HiveType(typeId: 0)
class SignUpModel {
  @HiveField(0)
  String username;

  @HiveField(1)
  String name;

  @HiveField(2)
  String email;

  @HiveField(3)
  String password;

  @HiveField(4)
  DateTime date;

  SignUpModel({
    required this.username,
    required this.name,
    required this.date,
    required this.email,
    required this.password,
  });

  factory SignUpModel.fromMap(Map<String, dynamic> json) {
    return SignUpModel(
      username: json['username'] ?? '',
      name: json['name'] ?? '',
      date: DateTime.parse(json['date'] ?? ''),
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );
  }
}
