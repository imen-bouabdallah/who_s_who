import 'package:flutter/material.dart';
import 'package:who_s_who/MBackground.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MBackground(),
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'About this App',
              style: Styling(30.0),
            ),
            Divider(
              color: Colors.black,
              indent: 20,
              endIndent: 20,
              thickness: 5,
            ),
            Text(
              'The game is inspired by a youtube serie with the same name \n'
                  'The application is developed using flutter',
              style: Styling(null),
            )
          ],
        ),
      ),
    );
  }

  TextStyle Styling(double size){
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: size,
    );
  }

}