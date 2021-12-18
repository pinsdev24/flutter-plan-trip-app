import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/components/large_button.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/screens/app_screen.dart';
import 'package:travel_app/screens/auth/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";

  @override
  void initState(){
    super.initState();
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Or Continue with'),
          ),
          Expanded(
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black,)
        ),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get Stated", style: kHeadingTextStyle,),
                SizedBox(height: kDefaultPadding,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter e-mail address",
                    prefixIcon: Icon(Icons.mail),
                    hoverColor: kButtonColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onChanged: (value){
                    setState(() {
                      this.email = value;
                    });
                  },
                ),
                SizedBox(height: kDefaultPadding + 10,),
                _divider(),
                SizedBox(height: kDefaultPadding + 10,),
                LargeButton(text: "Continue with Apple",icon: FontAwesomeIcons.apple,colour: Colors.black),
                SizedBox(height: kDefaultPadding,),
                LargeButton(text: "Continue with Facebook",icon: FontAwesomeIcons.facebook,colour: Colors.blue),
                SizedBox(height: kDefaultPadding +20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?"),
                    SizedBox(width: 10.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SingUp()));
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(color: kButtonColor, fontWeight: FontWeight.bold)),
                    )
                  ]
                ),
                SizedBox(height: kDefaultPadding,),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
        height: 50,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AppScreen()));
          },
          child: LargeButton(text: "Continue", colour: kButtonColor)
        )
      ),
    );
  }
}
