import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/models/activity.dart';

class ActivityItem extends StatelessWidget {
  final Activity activity;
  const ActivityItem({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 45,
            width:100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.access_alarm),
                  Text(activity.hour, style: kTitleTextStyle,)
                ],
              ),
            ),
          ),
          SizedBox(width: kDefaultPadding,),
          Expanded(child: Container(
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20.0)
            ),
            padding: EdgeInsets.only(right: 5.0, left: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(activity.activity, style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                ),),
                Spacer(),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(child: Icon(activity.icon),),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
