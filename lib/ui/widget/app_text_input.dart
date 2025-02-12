import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    super.key,
    required this.hintText,
    required this.controller,
    this.ObscureText, 
    this.maxLines,
  });

  final String hintText;
  final TextEditingController controller;
  final bool? ObscureText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: ObscureText?? false,
      maxLines: maxLines?? 1,
      decoration: InputDecoration(
          hintText: hintText,
          
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
