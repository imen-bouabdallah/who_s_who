import 'package:flutter/material.dart';

///Provide an empty list [] if you don't want any actions buttons on the appbar
AppBar TopBar(String text, List<Widget> list){
  return AppBar(
    backgroundColor: Colors.orange[800],
    title: Text(
      text,
      style: TextStyle(
      ),
    ),
    actions: list,

  );
}