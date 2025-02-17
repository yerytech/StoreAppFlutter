import 'dart:developer';

import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const InputTextField({
  this.errorText,
    super.key, required this.hintText, required this.icon, required this.obscureText, this.keyboardType, required this.controller, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onEditingComplete: () => log(controller.text),
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        maxLines: 1,
        validator: validator,
         
       decoration: InputDecoration(
       hintText: hintText,
      errorText: errorText,
       prefixIcon: Icon(icon),
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(5),
       ),
     focusedBorder: OutlineInputBorder(
       borderRadius: BorderRadius.circular(5),
       borderSide: BorderSide(
         color: const Color.fromARGB(255, 15, 71, 117)
       ),
       )
       
       
    
     ),
     
              
    );
  }
}