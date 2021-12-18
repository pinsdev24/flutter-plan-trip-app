import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';

class DiscountItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final String desc;

  const DiscountItem({Key? key, required this.icon, required this.name, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      margin: EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: Center(
              child: Icon(
                icon,
                color: Color(0xFF8B38B1),
              ),
            ),
          ),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: kTitleTextStyle,),
              Text(desc, style: TextStyle(
                  color: kTextLightColor
              ),)
            ],
          ),
        ],
      ),
    );
  }
}