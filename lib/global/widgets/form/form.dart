import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final bool maxLines;

  const FormFieldWidget({
    Key? key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.maxLines = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      maxLines: maxLines ? 2 : 1,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 15.0,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8.0),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
      ),
    );
  }
}
