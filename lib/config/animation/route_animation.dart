
import 'package:flutter/material.dart';

class SnakeTrasition extends StatelessWidget {
  const SnakeTrasition({super.key, required this.child, required this.offset, required this.curve, required this.duration,});
  final Widget child;
  final Offset offset;
  final Curve curve;
  final  Duration duration;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      curve: curve,
      tween: Tween(begin: 1.0,end: 0.0), 
       duration: duration, 
       builder: (context,value,child){
          return Transform.translate(offset: offset*value,
          child: child,
          
          );
       },
      child: child,
      
       );
  }
}