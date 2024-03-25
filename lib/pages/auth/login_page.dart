import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionhack2024/config/colors.dart';
import 'package:motionhack2024/controller/auth_controller/login_controller.dart';
import 'package:motionhack2024/pages/auth/widgets/my_button.dart';
import 'package:motionhack2024/pages/auth/widgets/my_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                MyTextField(
                  label: "Email",
                  placeholder: "Masukan email",
                  onChange: loginController.email,
                ),
                const SizedBox(
                  height: 18,
                ),
                MyTextField(
                  label: "Kata sandi",
                  placeholder: "Masukan kata sandi",
                  onChange: loginController.password,
                ),
                const SizedBox(
                  height: 18,
                ),
                MyButton(
                  type: "primary",
                  label: "Masuk",
                  onTap: () {
                    loginController.onLogin();
                  },
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun? "),
                    InkWell(
                      onTap: () {
                        Get.toNamed("/signup");
                      },
                      child: const Text(
                        "Daftar",
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
