import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  double? width;
  double? height;
  final Widget child;
   MyContainer({
    super.key,
    this.width =80,
    this.height = 80,
    required this.child,});
  @override

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      alignment: Alignment.center,
      width: width,
      height: height,
      child: child,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,5),
            blurRadius: 10,
            spreadRadius: 2,
            color: Colors.grey,
          ),
        ],
        gradient: LinearGradient(
          stops: [0.3, 0.7],
          colors: [Colors.blue.shade200,Colors.blue],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}
