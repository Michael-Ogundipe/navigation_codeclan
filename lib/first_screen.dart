import 'package:flutter/material.dart';
import 'package:navigation_codeclan/expanded_button.dart';
import 'package:navigation_codeclan/second_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      onPressed: (){},
                    ),

                    ExpandedButton(
                      text: 'Sign in',
                      color: Colors.white54,
                      textColor: Colors.black,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }));
                      },

                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
