import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color? haveColor;
  final String labelText;
  final TextStyle hintStyle;
  final Widget suffix;
  final Widget prefix;

  const CustomTextField(
      {super.key,
      required this.hintText,
      this.haveColor,
      required this.labelText,
      required this.hintStyle,
      required this.suffix,
      required this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hoverColor: haveColor,
          labelText: labelText,
          hintStyle: hintStyle,
          suffix: suffix,
          prefix: prefix,
          border: const OutlineInputBorder()),
    );
  }
}
