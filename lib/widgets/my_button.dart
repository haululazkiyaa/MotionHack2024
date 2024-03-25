import 'package:flutter/material.dart';
import 'package:motionhack2024/config/colors.dart';

class MyButton extends StatelessWidget {
  final String type;
  final String label;
  final VoidCallback onTap;
  const MyButton({
    super.key,
    required this.type,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var primaryBtn = BoxDecoration(
      color: primaryColor,
      borderRadius: BorderRadius.circular(8),
    );

    var secondaryBtn = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: primaryColor),
      borderRadius: BorderRadius.circular(8),
    );

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: type == "primary" ? primaryBtn : secondaryBtn,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 20,
                color: type == "primary" ? Colors.white : primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
