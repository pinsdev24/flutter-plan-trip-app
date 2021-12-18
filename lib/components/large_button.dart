import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color colour;
  final IconData? icon;

  LargeButton({Key? key, required this.text, required this.colour, this.icon, this.textColor = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: colour
      ),
      child: icon != null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(icon, color: Colors.white),
          SizedBox(width: 10.0,),
          Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ) : Center(
        child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w700
            )
        ),
      ),
    );
  }
}
