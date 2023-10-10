import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
const  CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.messageValidateOne,
      required this.messageValidateTwo,
      this.maxLines});

  final TextEditingController controller;
  final int? maxLines;
  final String hintText, messageValidateOne, messageValidateTwo;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return messageValidateOne;
        } else if (value.length < 10) {
          return messageValidateTwo;
        } else {
          return null;
        }
      },
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
