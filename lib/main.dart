import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FiraSans',),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, ),
            width: double.infinity,
            // height: ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('images/download.png'),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Growing your business is', style: TextStyle(color: Color(0xff000000),fontSize: 35.0),),
                      TextSpan(text: ' easier \n', style: TextStyle(color: Color(0xff5445ED),fontSize: 35.0),),
                      TextSpan(text: 'than you think! \n', style: TextStyle(color: Color(0xff000000),fontSize: 35.0),),
                      TextSpan(text: '\n Sign up takes only 2 minutes', style: TextStyle(color: Colors.black45,fontSize: 15.0),),
                    ],),),

                Container(
                  child: Column(
                    children: [
                      ExpandedButton(
                        text: 'Get Started',
                        color: Colors.black,
                        textColor: Colors.white,
                      ),

                      ExpandedButton(
                        text: 'Sign in',
                        color: Colors.white54,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandedButton extends StatelessWidget {

  ExpandedButton({ required this.text, required this.color, required this.textColor});

  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Material(
              elevation: 2.0,
              color: color,
              borderRadius: BorderRadius.circular(10.0),
              child: MaterialButton(
                height: 45.0,
                child: Text(text, style: TextStyle(color: textColor,fontSize: 16.0),),
                onPressed: (){},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
