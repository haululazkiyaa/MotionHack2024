import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionhack2024/config/routes.dart';
import 'package:motionhack2024/controllers/auth_controller/session_controller.dart';
import 'package:motionhack2024/firebase_options.dart';
import 'package:motionhack2024/pages/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) {
    // we are going to inject the auth controller over here!
    Get.put(SessionController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RiseFarmer",
      getPages: pages,
      home: LoginPage(),
    );
  }
}
