import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/components/input_field.dart';
import 'package:travel_app/components/large_button.dart';
import '../../constant.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  bool terms = true;

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
                Text("Create an account", style: kHeadingTextStyle,),
                SizedBox(height: kDefaultPadding,),
                InputField(title: "E-mail address", controller: emailController, prefIcon: Icons.mail),
                InputField(title: "Password", controller: passwordController, prefIcon: Icons.lock, isPassword: true,),
                InputField(title: "Repeat Password", controller: repeatPasswordController, prefIcon: Icons.lock, isPassword: true),
                SizedBox(height: kDefaultPadding + 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomCheckBox(
                      value: terms,
                      onChanged: (value) {
                        setState(() {
                          terms = value;
                        });
                      },
                      shouldShowBorder: true,
                      checkedFillColor: kButtonColor,
                      borderColor: kButtonColor,
                      borderRadius: 10,
                      checkBoxSize: 22,
                    ),
                    Text("I have read the "),
                    Text("Terms of Service", style: TextStyle(
                      color: kButtonColor,
                      fontWeight: FontWeight.w700
                    ),)
                  ],
                ),
                SizedBox(height: kDefaultPadding + 10,),
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
              print({
                "Email: " + emailController.text.trim(),
                "password: " + passwordController.text.trim(),
                "confirm password: " + repeatPasswordController.text.trim(),
                "Terms is ready: " + terms.toString()
              });
            },
            child: LargeButton(text: "Continue", colour: kButtonColor)
          )
      ),
    );
  }
}
