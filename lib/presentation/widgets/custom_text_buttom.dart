import 'package:flutter/material.dart';

class CustomTextButtom extends StatelessWidget {
  final String textCuestion;
  final String textAnsuwer;
  final VoidCallback onPress;
  const CustomTextButtom({
    super.key, required this.textCuestion, required this.textAnsuwer, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textCuestion , style: const TextStyle(  fontSize: 16,  ),),
        const SizedBox(width: 10,),
        GestureDetector(
          onTap: onPress,
          child: Text(textAnsuwer, style: const TextStyle(  fontSize: 16, fontWeight: FontWeight.bold ,color: Colors.blue),))
      ],
    );
  }
}