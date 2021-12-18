import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/screens/auth/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 10.0),
          child: Column(
            children: [
              Lottie.asset(
                "assets/animation/travel.json"
              ),
              SizedBox(height: 50,),
              Text(
                "Plan Your trip easiest way possible", style: kHeadingTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: kDefaultPadding,),
              Text(
                "Find interesting destinations and create plans for trips in seconds.",
                style: TextStyle(
                  color: kTextLightColor,
                  fontSize: 18.0,
                ), textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: kButtonColor
                  ),
                  child: Icon(FontAwesomeIcons.arrowRight, color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          height: 25,
          child: Text(
            "👋 192 new users today!",
            style: TextStyle(color: kTextLightColor),
            textAlign: TextAlign.center,
          )
      ),
    );
  }
}

