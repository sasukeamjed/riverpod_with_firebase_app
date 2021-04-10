import 'package:flutter/foundation.dart';

class User {
  final String uid;
  final String email;
  final String username;
  final String phoneNumber;

  User({
    @required this.uid,
    @required this.email,
    @required this.username,
    @required this.phoneNumber,
  });
}
