import 'package:flutter/material.dart';
import 'package:travel_app/components/preference_elt.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/screens/setting/discounts.dart';
import 'package:travel_app/screens/setting/edit_profile.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding + 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your Preferences", style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w700
          ),),
          SizedBox(height: kDefaultPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/actor_3.png",
                fit: BoxFit.cover,
                width: 40.0,
                height: 40.0,
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pins", style: kTitleTextStyle,),
                  Text("NLP Engineer", style: TextStyle(
                      color: kTextLightColor
                  ),)
                ],
              ),
              Spacer(),
              Container(
                height: 40.0,
                width: 100.0,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: kButtonColorAccent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => EditProfileScreen()));
                      },
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(color: kButtonColor, fontWeight: FontWeight.bold),
                      ),
                    )
                ),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding,),
          Divider(color: Colors.grey,),
          PreferenceItem(icon: Icons.credit_card, name: "Payment methods", desc: "Manage your cards"),
          Divider(color: Colors.grey),
          PreferenceItem(icon: Icons.explore, name: "Discounts", desc: "Check out your discounts", goto: Discount(),),
          Divider(color: Colors.grey),
          PreferenceItem(icon: Icons.notifications, name: "Notifications", desc: "Notification preferences"),
          Divider(color: Colors.grey),
          PreferenceItem(icon: Icons.alarm, name: "Time Zones", desc: "Chance your time zone"),
          SizedBox(height: kDefaultPadding * 2,),
          GestureDetector(
            onTap: (){
              print("log out");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.red,),
                  SizedBox(width: 10.0,),
                  Text("Log out", style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
