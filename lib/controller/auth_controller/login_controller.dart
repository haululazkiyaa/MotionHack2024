import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:motionhack2024/config/colors.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  void onLogin() {
    signIn(email.text, password.text);
  }

  Future<void> signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Fluttertoast.showToast(
          msg: "Login berhasil", backgroundColor: primaryColor);
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "invalid-credential") {
        Fluttertoast.showToast(
            msg: "Email atau password salah", backgroundColor: Colors.amber);
      }
      Fluttertoast.showToast(
          msg: "Terjadi kesalahan", backgroundColor: Colors.red);
    } catch (ex) {
      Fluttertoast.showToast(
          msg: "Terjadi kesalahan", backgroundColor: Colors.red);
    }
  }
}
