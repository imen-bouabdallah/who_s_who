import 'package:flutter/material.dart';
import 'package:who_s_who/MBackground.dart';

class Tutorial extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: MBackground(),
        child: Column(
          children: [
            Text('Title'
                'the game must have at least three members'
                'and no more that 7 (otherwise it\'d be so long to finish)'
                'each player take turn in asking questions and guessing which question belong to whom\'s'),
          ],
        ),
      ),
    );
  }

}