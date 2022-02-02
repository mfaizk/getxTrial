import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthHelper extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final Rxn<User> _user = Rxn<User>();

  String? get user => _user.value?.email;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
    print(_user);
  }

  void login(String email, String pass) {
    _auth.signInWithEmailAndPassword(email: email, password: pass);
  }

  void signup(String email, String pass) {
    _auth.createUserWithEmailAndPassword(email: email, password: pass);
  }

  void signOut() {
    _auth.signOut();
  }

  void signInAsAnonymous() {
    _auth.signInAnonymously();
  }
}
