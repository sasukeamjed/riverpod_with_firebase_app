import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_with_firebase_app/models/user_model.dart';



class Auth{
  final Reader _read;

  const Auth(this._read);

  Future<UserModel> login({@required String email, @required String password}) async{
    UserCredential userCredential = await _read(authInstanceProvider).signInWithEmailAndPassword(email: email, password: password);
    return UserModel(uid: userCredential.user.uid, email: userCredential.user.email, username: 'username', phoneNumber: "phoneNumber");
  }

  Future<UserModel> register({@required String email, @required String password}) async{
    UserCredential userCredential = await _read(authInstanceProvider).createUserWithEmailAndPassword(email: email, password: password);
    return UserModel(uid: userCredential.user.uid, email: userCredential.user.email, username: 'username', phoneNumber: "phoneNumber");
  }
}