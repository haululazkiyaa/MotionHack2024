import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';
import 'package:motionhack2024/controllers/auth_controller/session_controller.dart';
import 'package:motionhack2024/controllers/user_controller/userdata_controller.dart';
import 'package:motionhack2024/pages/profile/lacak_pesanan.dart';
import 'package:motionhack2024/widgets/profile/profile_options.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  static const routeName = "/profile";
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _db = FirebaseFirestore.instance;

  String? uid = FirebaseAuth.instance.currentUser?.uid;
  String nama = "User";
  String email = "Email";

  handleGetName() async {
    final data =
        await _db.collection('Users').where("uid", isEqualTo: uid).get();
    final userData = data.docs[0].data() as Map<String, dynamic>;
    setState(() {
      nama = userData["name"];
      email = userData["email"];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    handleGetName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 29,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(
                  width: 1,
                ),
                Text(
                  "nama",
                  style: GoogleFonts.roboto(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 1,
                )
              ]),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Container(
                    width: 212,
                    height: 112,
                    // padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70),
                            bottomRight: Radius.circular(70))),
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.transparent, // Image radius
                      child: Image.asset('assets/images/profile.png'),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    children: [
                      Text(
                        nama,
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                          ),
                          Text(
                            email,
                            style: GoogleFonts.roboto(
                                fontSize: 15, color: Color(0xFF666666)),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              ProfileOptions(
                text: "Edit Profile",
                color: Colors.black,
                onTap: () {},
              ),
              SizedBox(
                height: 16,
              ),
              ProfileOptions(
                text: "Lacak Pesanan",
                color: Colors.black,
                onTap: () => Get.toNamed(LacakPesanan.routeName),
              ),
              SizedBox(
                height: 16,
              ),
              ProfileOptions(
                text: "Bantuan",
                color: Colors.black,
                onTap: () {},
              ),
              SizedBox(
                height: 16,
              ),
              ProfileOptions(
                text: "Keluar",
                color: Colors.red,
                onTap: () => {
                  SessionController.authInstance.signOut(),
                },
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
