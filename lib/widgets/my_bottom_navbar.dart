import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motionhack2024/config/colors.dart';

class MyBottomNavbar extends StatelessWidget {
  final VoidCallback onTap;
  final bool isActive;
  final String svgs;
  final String label;
  const MyBottomNavbar({
    super.key,
    required this.onTap,
    required this.isActive,
    required this.svgs,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            svgs,
            width: 25,
            height: 25,
          ),
          Text(
            label,
            style: TextStyle(
              color: isActive ? primaryColor : Color(0xFF666666),
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
