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
            Text(
              'TUTORIAL',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                ),
              ),
            Text('The game must have at least three members'
                'and no more that 7 (otherwise it\'d be so long to finish)\n'
                'Each player take turn in asking three questions and guessing which question belong to whom\'s\n\t '
                'The questions can be either typed by the current player or choosen from a list\n'
                'To be able to guess the belonging of the answers discussion take place between all the players'
                'one answer at a time, until the current one'
                'assign the current answer to someone\n'
                'For each right guess the player gets a point,'
                'who ever gets more wins.',
                style: TextStyle(
                  color: Colors.black,
                ),
            ),

          ],
        ),
      ),
    );
  }

}