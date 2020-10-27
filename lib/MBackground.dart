import 'package:flutter/material.dart';

Decoration MBackground(){
  return  BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        colors: [
          Colors.orange[800],
          Colors.orange[700],
          Colors.yellow[700],
        ]
      ),
  );
}