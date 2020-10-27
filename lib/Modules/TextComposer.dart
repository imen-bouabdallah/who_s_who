import 'package:flutter/material.dart';

Widget TextComposer() {
  return Container(
    alignment: Alignment.bottomCenter,
    padding: EdgeInsets.only(bottom: 20.0),
    color: Colors.white,
    child: Row(
      children: [
        Material(
          color: Colors.white,
          child: IconButton(
            icon: Icon(Icons.photo),
            onPressed: () {
              //open galery to send images
            },
            color: Colors.orange,
          ),
        ),
        Expanded(

          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            //So that the first letter would be capital
            decoration: InputDecoration(
              hintText: 'Type a message ...',
            ),
          ),
        ),
        Material(
          color: Colors.white,
          child: IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              //send msg
              print('send');
            },
            color: Colors.orange,
          ),
        ),
      ],
    ),
  );
}