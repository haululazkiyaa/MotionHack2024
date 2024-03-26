import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:motionhack2024/pages/app_page.dart';
import 'package:motionhack2024/pages/auth/login_page.dart';

class SessionController extends GetxController {
  static SessionController authInstance = Get.find();
  late Rx<User?> firebaseUser;

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());

    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user != null) {
      // user is logged in
      Get.offAll(() => const AppPage());
    } else {
      // user is null as in user is not available or not logged in
      Get.offAll(() => LoginPage());
    }
  }

  void signOut() {
    try {
      auth.signOut();
    } catch (e) {
      // print(e.toString());
    }
  }
}
