import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  final String? labelText;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 55,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            decoration: InputDecoration(
                hintText: hintText,
                labelText: labelText,
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
