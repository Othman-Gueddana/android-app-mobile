import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum AuthStatus { unauthenticated, authenticating, authenticated }

class AuthProvider with ChangeNotifier {
  FirebaseAuth _auth;
  User _user;
  AuthStatus _authStatus;
  String errorMessage;

  AuthProvider() {
    _auth = FirebaseAuth.instance;
    _auth.authStateChanges().listen((User user) {
      if (user == null) {
        _authStatus = AuthStatus.unauthenticated;
        // Navigator.pushNamed(context, "/");
      } else {
        _user = user;
        // Navigator.pushNamed(context, "/showScreens");
      }
      notifyListeners();
    });
  }

  AuthStatus get authStatus => _authStatus;
  User get user => _user;

  Future<bool> login(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      _authStatus = AuthStatus.authenticating;
      notifyListeners();
      return true;
      // Navigator.pushNamed(context, "/showScreens");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorMessage = "user not found";
        //   throw ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(
        //       content: const Text('utilisateur non trouvée '),
        // ),
        // );
      } else if (e.code == 'wrong-password') {
        errorMessage = "wrong password";
        // throw ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: const Text('mauvais mot de passe'),
        //   ),
        // );
        // }
      }
    } catch (e) {
      print(e.code);
    }
  }

  logout() async {
    await _auth.signOut();
    _authStatus = AuthStatus.unauthenticated;
    notifyListeners();
  }
}
