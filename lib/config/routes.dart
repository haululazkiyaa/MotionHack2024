import 'package:get/get.dart';
import 'package:motionhack2024/pages/app_page.dart';
import 'package:motionhack2024/pages/auth/login_page.dart';
import 'package:motionhack2024/pages/auth/signup_page.dart';

var pages = [
  GetPage(name: "/login", page: () => LoginPage()),
  GetPage(name: "/signup", page: () => SignupPage()),
  GetPage(name: "/app", page: () => AppPage()),
];
