import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:who_s_who/Discussion.dart';
import 'package:who_s_who/Modules/TextComposer.dart';
import 'package:who_s_who/TopBar.dart';

class AnswerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: TopBar('Your Answer', []),
      body: GestureDetector(
        onTap:() => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Center(
                //width: double.infinity,
                child: Container(
                  padding: EdgeInsets.only(bottom: 30.0, left: 50.0, right: 50.0, top: 20.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 5.0,
                      ),
                    color: Colors.orangeAccent,
                  ),
                  //alignment: Alignment.bottomCenter,
                  child: Text(
                    'Question :?',
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
            TextComposer(()=>{}, (String msg)=>{
            //TODO send the answer to the DB
            print("sending data"+ msg),
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Discussion())),
            }),
          ],
        ),
      ),
    );
  }



}


