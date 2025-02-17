import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final VoidCallback onpress;
  final String text;
  final IconData icon;
  final  bool disable ;
  const CustomButtom({
    super.key, required this.onpress, required this.text, required this.icon, required this.disable,
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
            onPressed: !disable? onpress:null, child: Text(text, style: const TextStyle(  fontSize: 16, fontWeight: FontWeight.bold ,color: Colors.white),), ),
          Icon(icon, color: !disable? Colors.white:Colors.grey,),
        ],
      ));}
}