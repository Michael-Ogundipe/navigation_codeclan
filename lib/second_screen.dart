import 'package:flutter/material.dart';
import 'package:navigation_codeclan/expanded_button.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('You can go back now')
      ),
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
                    TextSpan(text: 'Growing your farm is', style: TextStyle(color: Color(0xff000000),fontSize: 35.0),),
                    TextSpan(text: ' easier \n', style: TextStyle(color: Color(0xff5445ED),fontSize: 35.0),),
                    TextSpan(text: 'than you think! \n', style: TextStyle(color: Color(0xff000000),fontSize: 35.0),),
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
