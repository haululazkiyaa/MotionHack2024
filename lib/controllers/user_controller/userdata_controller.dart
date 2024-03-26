import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:motionhack2024/models/user_model.dart';

class UserdataController extends GetxController {
  static UserdataController get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    print("ADD DATA");
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(() => null)
        .catchError((error) {
      print(" E R O R : ");
      print(error.toString());
    });
  }
}
