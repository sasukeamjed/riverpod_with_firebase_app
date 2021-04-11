import 'package:flutter/foundation.dart';

class UserModel {
  final String uid;
  final String email;
  final String username;
  final String phoneNumber;

  UserModel({
    @required this.uid,
    @required this.email,
    @required this.username,
    @required this.phoneNumber,
  });
}
