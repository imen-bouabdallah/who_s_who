import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:who_s_who/MBackground.dart';

import 'file:///D:/Android/AndroidStudioProjects2/who_s_who/lib/Screens/authPage.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        title: 'Who\'s who',
        home: LoginPage(),
      )
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: MBackground(),
          child : Stack(
              children: <Widget>[
                Container(

                )
              ]
          )

      ),
    );

  }
}