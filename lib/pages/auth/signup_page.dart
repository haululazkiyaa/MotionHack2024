import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionhack2024/config/colors.dart';
import 'package:motionhack2024/controllers/auth_controller/signup_controller.dart';
import 'package:motionhack2024/widgets/my_button.dart';
import 'package:motionhack2024/widgets/my_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.put(SignupController());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                MyTextField(
                  label: "Nama",
                  placeholder: "Masukan nama",
                  onChange: signupController.name,
                ),
                const SizedBox(
                  height: 18,
                ),
                MyTextField(
                  label: "Email",
                  placeholder: "Masukan email",
                  onChange: signupController.email,
                ),
                const SizedBox(
                  height: 18,
                ),
                MyTextField(
                  label: "Kata sandi",
                  placeholder: "Masukan kata sandi",
                  onChange: signupController.password,
                ),
                const SizedBox(
                  height: 18,
                ),
                MyTextField(
                  label: "Konfirmasi kata sandi",
                  placeholder: "Masukan kembali kata sandi",
                  onChange: signupController.confirmPassword,
                ),
                const SizedBox(
                  height: 18,
                ),
                MyButton(
                  type: "primary",
                  label: "Buat Akun",
                  onTap: () {
                    signupController.onSignUp();
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sudah punya akun? "),
                    InkWell(
                      onTap: () {
                        Get.toNamed("/login");
                      },
                      child: const Text(
                        "Masuk",
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
