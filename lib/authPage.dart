import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:who_s_who/RecoverPass.dart';
import 'package:who_s_who/WelcomePage.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() =>_LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///So that the little white gap won't appear when the keyboard is showing
      resizeToAvoidBottomPadding: false,

      ///So that when the textfielsd is focused and the user clicks else where it unfocus it
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,

                  colors: [
                  Colors.orange[700],
                  Colors.yellow[600]
                ]
              )
            ),
            //padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70.0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),

                    ),
                  ),
                ),
                Divider(
                  color: Colors.black26,
                  thickness: 2.0,
                  indent: 20,
                  endIndent: 20,
                ),
              SizedBox(height: 40.0,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
                    color: Colors.white70,
                  ),
                  padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      SizedBox(height: 20.0,),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.orange,
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                RoundedInputField("Your email",Icons.person, false),
                                RoundedInputField("Password", Icons.lock, true),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.centerRight,
                            child: RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(
                                text:'Forgot password?',
                                style: TextStyle(
                                  color: Colors.blueGrey,

                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => FogotPass(context),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          RaisedButton.icon(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.black12,),
                            ),
                            onPressed: (){
                              Log(context, "admin","admin");
                              },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                            ),
                            color: Colors.white70,
                            label: Text(
                              'Login ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            splashColor: Colors.red,
                          )
                        ],
                      ),
                      SizedBox (height: 30.0,),
                      Divider(color: Colors.black,
                      indent: 10.0,
                      endIndent: 10.0,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Continue with socials',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox( height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SocialButton('Facebook', Colors.blue, Icons.face, 'www.facebook.com'),
                          SizedBox( width:  40.0,),
                          SocialButton('Gmail', Colors.redAccent, Icons.mail_outline, 'www.gmail.com'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ],
            ),


        ),
      ),

    );
  }

Widget  RoundedInputField(String hintText, IconData icon, bool password) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),

      ),
      padding: EdgeInsets.all(8.0),
      child: Theme(
          data: ThemeData(
            primaryColor: Colors.orange,
          ),
          child: TextField(
            obscureText: password,
            onChanged: (value){},
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.black,
              ),
              hintText: hintText,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white10),
              ),

            ),
          ),
      )
      );
}

  void Log(BuildContext context, String name, String pass) {
    if(name=='admin' && pass=='admin') {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => WelcomePage()));
    }
    else if(name.isEmpty || pass.isEmpty){
      Scaffold.of(context).showSnackBar(SnackBar(content: Text("please fill all"),));
    }
    else{
      SnackBar(content: Text("Wrong infos"),);

    }
  }

Widget  SocialButton(String text, Color color, IconData icon, String url) {
    return Expanded(
        child :SizedBox(
          height: 50.0,
          child: FlatButton.icon(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
              icon: Icon(icon),
              textColor: Colors.white,
              color: color,
              label: Text(text),
              onPressed: (){},
      ),
        ),
    );
}

}

FogotPass(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => RecoverPass()));
}