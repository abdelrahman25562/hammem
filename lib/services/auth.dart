import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _auth = FirebaseAuth.instance;

  Future<AuthResult> signUp(
      String email, String password, String name, String country) async {
    final authResult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    return authResult;
  }

  Future<AuthResult> signIn(String email, String password) async {
    final authResult = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return authResult;
  }
  Future<void> signOut() async {
    return _auth.signOut();
  }

  Future<FirebaseUser> getUser() async {
    return await _auth.currentUser();
  }
}
