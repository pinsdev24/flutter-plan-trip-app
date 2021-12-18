import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';

class PreferenceItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color bgColorIcon;
  final String name;
  final String desc;
  final Widget? goto;
  const PreferenceItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.desc,
    this.goto,
    this.iconColor = Colors.black,
    this.bgColorIcon = Colors.grey
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 45.0,
          height: 45.0,
          margin: EdgeInsets.symmetric(vertical: 20.0),
          decoration: BoxDecoration(
            color: bgColorIcon,
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Center(
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: kTitleTextStyle,),
            Text(desc, style: TextStyle(
              color: kTextLightColor
            ),)
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: (){
            if (goto != null)
              Navigator.push(context, MaterialPageRoute(builder: (context) => goto!));
          },
          child: Icon(Icons.arrow_forward, color: Colors.grey,)
        )
      ],
    );
  }
}
