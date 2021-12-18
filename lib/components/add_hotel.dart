import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';

class FlightPlan extends StatelessWidget {
  final String  code;
  final String  date;
  final String  flagImage;
  const FlightPlan({Key? key, required this.code, required this.date, required this.flagImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(child: Image.asset(
              flagImage,
              fit: BoxFit.cover,
            ),),
          ),
          Text(code, style: TextStyle(fontSize: 40)),
          Text(date),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.art_track_outlined, color: Colors.blueAccent),
              SizedBox(width: 10,),
              Text("First Class")
            ],
          )
        ],
      ),
    );
  }
}
