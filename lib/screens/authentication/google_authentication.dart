import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CurrentUser extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  late String _uid;
  late String _phone;
  String get getUid => _uid;
  String get getPhone => _phone;

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> onStartUp() async {
    String retVal = 'error';
    try {
      final _firebaseUser = await _auth.currentUser!;
      _uid = _firebaseUser.uid;
      _phone = _firebaseUser.phoneNumber!;
      retVal = 'success';
    } catch (e) {
      print(e);
    }
    return retVal;
  }

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  Future googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);

    notifyListeners();
  }
}
