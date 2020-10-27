import 'package:flutter/material.dart';

Decoration MBackground(){
  return  BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.orange[800],
          Colors.orange[700],
          Colors.yellow[700],
        ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,

      ),
  );
}