import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SignupController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  void onSignUp() {
    createAccount(email.text, password.text);
  }

  Future<String> createAccount(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return "Akun berhasi dibuat";
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        return "Weak password";
      } else if (ex.code == "email-already-in-use") {
        return "Email already exist";
      }
      return "";
    } catch (ex) {
      return "";
    }
  }
}
