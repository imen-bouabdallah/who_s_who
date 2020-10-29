import 'package:flutter/material.dart';

/// This widget is for text typing it contains two icon buttons one to send images and the other to send messages
/// a text field to write the message's text
/// msgController is used to retrieve the text in the text field after send button is pressed and is passed to a function

final msgController = TextEditingController();

@override
void dispose(){
  msgController.dispose();
}

_printLatestValue() {
  print("Second text field: ${msgController.text}");
}

Widget TextComposer(openGalery, function) {
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
              openGalery();
              },
            color: Colors.orange,
          ),
        ),
        Expanded(

          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            autocorrect: true,
            //So that the first letter would be capital
            decoration: InputDecoration(
              hintText: 'Type a message ...',
            ),
            controller: msgController,
          ),
        ),
        Material(
          color: Colors.white,
          child: IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              print('send');
              final String message = msgController.text;
              msgController.clear();
              function(message);
            },
            color: Colors.orange,
          ),
        ),
      ],
    ),
  );
}
