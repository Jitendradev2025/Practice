
import 'package:flutter/material.dart';
import 'package:thread_clone/utils/type_def.dart';


class AuthInput extends StatelessWidget {
  final String lable, hintText;
  final bool isPasswordField;
  final TextEditingController controller;
  final ValidatorCallback validatorCallback;
  const AuthInput({
    required this.hintText,
   required this.lable,
    this.isPasswordField =false, super.key,
    required this.controller,
    required this.validatorCallback, required validator,
    
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPasswordField,
      validator: validatorCallback,
     decoration: InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey),
        ),
        label: Text(lable),
            hintText: hintText,
    ),
     );
  }
}
