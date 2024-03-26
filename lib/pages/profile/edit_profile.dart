import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/widgets/profile/editprofileitem.dart';

import '../../config/colors.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});
  static const routeName = "/editprofile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 27),
                color: primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              color: Colors.white),
                          child: Icon(Icons.arrow_back)),
                    ),
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 1,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              EditProfileItem(subText: "Nama Orang", textJudul: "Nama"),
              SizedBox(
                height: 16,
              ),
              EditProfileItem(
                  subText: "youremail@gmail.com", textJudul: "Email"),
              SizedBox(
                height: 16,
              ),
              EditProfileItem(subText: "0822xxxxx", textJudul: "No Handphone"),
              SizedBox(
                height: 16,
              ),
              EditProfileItem(subText: "Makassar", textJudul: "Lokasi"),
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
