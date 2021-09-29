import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.01,0.9],
          colors: [Color(0xffd8c500),Color(0xff34006d)]
      ),
    ),
    );
  }
}