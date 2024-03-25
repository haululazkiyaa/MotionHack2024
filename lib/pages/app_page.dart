import 'package:flutter/material.dart';
import 'package:motionhack2024/pages/display_page.dart';
import 'package:motionhack2024/pages/home_page.dart';
import 'package:motionhack2024/pages/profile_page.dart';
import 'package:motionhack2024/widgets/my_bottom_navbar.dart';
import 'package:motionhack2024/pages/market_page.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int index = 0;

  List menu = const [
    {
      "ic": "assets/svgs/ic_home.svg",
      "ic_active": "assets/svgs/ic_home_active.svg",
      "label": "Home",
    },
    {
      "ic": "assets/svgs/ic_market.svg",
      "ic_active": "assets/svgs/ic_market_active.svg",
      "label": "Pasar",
    },
    {
      "ic": "assets/svgs/ic_display.svg",
      "ic_active": "assets/svgs/ic_display_active.svg",
      "label": "Etalase",
    },
    {
      "ic": "assets/svgs/ic_profile.svg",
      "ic_active": "assets/svgs/ic_profile_active.svg",
      "label": "Profil",
    },
  ];

  List page = const [
    HomePage(),
    MarketPage(),
    DisplayPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color(0xFF666666).withOpacity(0.10),
            blurRadius: 10,
          ),
        ]),
        child: Container(
          height: 65,
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              page.length,
              (i) {
                return MyBottomNavbar(
                  onTap: () {
                    setState(() {
                      index = i;
                    });
                  },
                  isActive: index == i,
                  svgs: index == i ? menu[i]["ic_active"] : menu[i]["ic"],
                  label: menu[i]["label"],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
