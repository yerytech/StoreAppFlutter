import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  final IconData icon;
  final  bool disable ;
  const CustomButton({
    super.key, required this.onPress, required this.text, required this.icon, required this.disable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color:!disable? const  Color.fromARGB(255, 21, 87, 201):Colors.grey ,
      
      ),
      width: double.infinity,height: 55,
      
      child: Row(
  
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
             style: ButtonStyle(),
            onPressed: !disable? onPress:null, child: Text(text, style: const TextStyle(  fontSize: 16, fontWeight: FontWeight.bold ,color: Colors.white),), ),
          Icon(icon, color: !disable? Colors.white:Colors.grey,),
        ],
      ));}
}