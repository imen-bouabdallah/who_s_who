import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:who_s_who/Discussion.dart';
import 'package:who_s_who/MBackground.dart';
import 'package:who_s_who/Setings.dart';
import 'package:who_s_who/TestFile.dart';
import 'package:who_s_who/TopBar.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  TopBar('who\'s who',[IconButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Setting()));
        },
        icon: Icon(Icons.settings),
        tooltip: 'Settings',
        padding: EdgeInsets.only(right: 2),
      )]),
      body: Container(
          width: double.infinity,
        decoration: MBackground(),
        child: Container(
          margin: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white12,
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromRGBO(184, 116, 85, 50.0),
                Color.fromRGBO(224, 123, 57, 80.0),
                Color.fromRGBO(128, 57, 30,0.00000),
              ]
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/logo1.png',
                width: 150,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left:50.0, right:50.0, top:80.0),
                padding: EdgeInsets.only(top:10.0, bottom:10.0),
                decoration: BoxDecoration(
                    border: Border.all(
                    color: Colors.black26,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Column(
                  children: [
                    RedirectButton('Create a new game', Icons.create, context, SnackBarDemo()),
                    RedirectButton('Join existing', Icons.input, context, Discussion()),
                  ],
                ),
              ),

            ],
          ),
        )
      ),
    );
  }

}

// ignore: non_constant_identifier_names
Widget RedirectButton(String text, IconData icon, BuildContext context, Widget Page) {
  return OutlineButton.icon(
      onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page),
        );
      },
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(color: Colors.black12,),
    ),
      icon: Icon(
        icon,
      ),
      label: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0
        ),
      ),
    );
}