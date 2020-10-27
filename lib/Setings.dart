import 'package:flutter/material.dart';
import 'package:who_s_who/About.dart';
import 'package:who_s_who/MBackground.dart';
import 'package:who_s_who/TopBar.dart';
import 'package:who_s_who/Tutorial.dart';

import 'authPage.dart';

// ignore: must_be_immutable
class Setting extends StatelessWidget{
 bool nightMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar('Settings',[]),
      body: Container(

        decoration: MBackground(),
        child: ListView(
          children: [
            SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: (){
                      nightMode? nightMode =false:nightMode=true;
                    },
                    icon: nightMode?Icon(
                      Icons.wb_sunny,
                    ):
                    Icon(
                        Icons.brightness_3,
                    ),
                  tooltip: 'Night Mode',
                ),
                IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => About()),
                    );
                  },
                  icon: Icon(
                    Icons.help_outline,
                  ),
                  tooltip: 'About us',
                ),
              ],
            ),
            SizedBox( height: 80.0),
            DialogButton(context,'Language',Icons.flag, Lgg()),
            DialogButton(context, 'Sound', Icons.volume_down, Sound()),
            Divider(
              indent: 40.0,
              endIndent: 40.0,
              color: Colors.black,
            ),
            ActionButton(context, 'How to play', Icons.videogame_asset, Tutorial()),
            Divider(
              indent: 40.0,
              endIndent: 40.0,
              color: Colors.black,
            ),
            ActionButton(context, 'FeedBack', Icons.feedback, LoginPage()),
            ActionButton(context, 'Rate us', Icons.star, About()),
          ],
        ),
      ),
    );
  }



}

Widget Sound() {
  double _currentSliderValue = 20.0;
  return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 50,
      label: 'Volume',
      onChanged: null,
  );
}
Lgg() {
}
Widget DialogButton(BuildContext context, String text, IconData icon, function) {
  return FlatButton.icon(
    onPressed: (){
     /* AlertDialog(
        title: Text('Choose language'),
      );*/
     function;
    },

    icon: Icon(
      icon,
    ),
    label: Text(
      text,
    ),
  );

}

// ignore: non_constant_identifier_names
Widget ActionButton(BuildContext context, String text, IconData icon, Widget Url) {
  return FlatButton.icon(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Url),
        );
      },
      icon: Icon(
        icon,
      ),
      label: Text(
        text,
      ),
  );
}