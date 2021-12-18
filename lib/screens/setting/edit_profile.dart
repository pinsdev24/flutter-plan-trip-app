import 'package:flutter/material.dart';
import 'package:travel_app/components/input_field.dart';
import 'package:travel_app/components/large_button.dart';
import 'package:travel_app/constant.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController emailController = TextEditingController(text: "pinspindoh@gmail.com");
    TextEditingController passwordController = TextEditingController(text: "pinspindoh19995949");
    TextEditingController professionController = TextEditingController(text: "NLP Engineer");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Stack(
              children: [
                Positioned(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Pins Pindoh", style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700
                          ),),
                          Spacer(),
                          Image.asset("assets/images/actor_3.png", width: 40.0, height: 40.0,)
                        ],
                      ),
                      SizedBox(height: kDefaultPadding,),
                      InputField(title: "E-mail address", controller: emailController, prefIcon: Icons.mail),
                      InputField(title: "Password", controller: passwordController, prefIcon: Icons.lock, isPassword: true, isPsEdit: true,),
                      InputField(title: "Profession", controller: professionController, prefIcon: Icons.engineering),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  left: 0.0,
                  right: 0.0,
                  child: GestureDetector(
                    onTap: (){
                      print({
                        "email": emailController.text.trim(),
                        "password": passwordController.text.trim(),
                        "profession": professionController.text.trim(),
                      });
                    },
                    child: LargeButton(text: "Save changes", colour: kButtonColor),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

