import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController onChange;
  const MyTextField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF666666).withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text(label)],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: onChange,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: placeholder,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
