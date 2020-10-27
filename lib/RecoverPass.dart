import 'package:flutter/material.dart';
import 'package:who_s_who/MBackground.dart';

class RecoverPass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MBackground(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(

            ),
            SizedBox(height: 10,),
            TextField(),
            RaisedButton(
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
  
}