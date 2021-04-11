import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_with_firebase_app/auth_services/auth.dart';
import 'package:riverpod_with_firebase_app/models/user_model.dart';

final authInstanceProvider = Provider<FirebaseAuth>((ref)=> FirebaseAuth.instance);
final authServicesProvider = Provider<Auth>((ref)=> Auth(ref.read));
final authState = StreamProvider<UserModel>((ref){
  ref.watch(authInstanceProvider).currentUser;
});