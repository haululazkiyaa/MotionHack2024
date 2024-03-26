import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:motionhack2024/config/colors.dart';
import 'package:motionhack2024/controllers/user_controller/userdata_controller.dart';
import 'package:motionhack2024/models/user_model.dart';

class SignupController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  final userData = Get.put(UserdataController());

  final FirebaseAuth auth = FirebaseAuth.instance;

  void onSignUp() {
    createAccount(name.text, email.text, password.text);
  }

  Future<void> createAccount(String name, String email, String password) async {
    try {
      print(" REGIST");
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((res) {
        print(" RESULT");
        final user = UserModel(
          uid: res.user?.uid,
          name: name,
          email: email,
        );

        createUser() async {
          try {
            print(" RESULT DATA");
            await userData.createUser(user);
          } catch (ex) {
            print(" E R O R :");
            print(ex.toString());
          }
        }

        createUser();
      });
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
      print(" E R O R : $ex");
      Fluttertoast.showToast(
          msg: "Terjadi kesalahan", backgroundColor: Colors.red);
    }
  }
}
