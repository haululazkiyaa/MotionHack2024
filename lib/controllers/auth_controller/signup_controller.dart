import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:motionhack2024/config/colors.dart';

class SignupController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  void onSignUp() {
    createAccount(email.text, password.text);
  }

  Future<void> createAccount(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Fluttertoast.showToast(
          msg: "Registrasi berhasil", backgroundColor: primaryColor);
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        Fluttertoast.showToast(
            msg: "Password lemah", backgroundColor: Colors.amber);
      } else if (ex.code == "email-already-in-use") {
        Fluttertoast.showToast(
            msg: "Email sudah ada", backgroundColor: Colors.amber);
      }
      Fluttertoast.showToast(
          msg: "Terjadi kesalahan", backgroundColor: Colors.red);
    } catch (ex) {
      Fluttertoast.showToast(
          msg: "Terjadi kesalahan", backgroundColor: Colors.red);
      ;
    }
  }
}
