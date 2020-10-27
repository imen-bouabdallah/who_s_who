import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:who_s_who/Modules/TextComposer.dart';

class Answers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap:() => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  )
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 10.0, left: 20.0, right: 20.0),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Question : \n',
                  ),
                ),
              ),
            ),
            TextComposer(),
          ],
        ),
      ),
    );
  }
}
