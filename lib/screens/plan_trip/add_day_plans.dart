import 'package:flutter/material.dart';
import 'package:travel_app/components/activity.dart';
import 'package:travel_app/components/large_button.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/models/activity.dart';
import 'package:travel_app/screens/plan_trip/add_hotel_flight.dart';

class AddDayPlans extends StatefulWidget {
  const AddDayPlans({Key? key}) : super(key: key);

  @override
  _AddDayPlansState createState() => _AddDayPlansState();
}

class _AddDayPlansState extends State<AddDayPlans> {
  List<String> days = ["March 22", "March 23", "March 24"];
  int _daysIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add days plans", style: kTitleTextStyle,),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: days.map((elt) => InkWell(
                      onTap: (){
                        setState(() {
                          _daysIndex = days.indexOf(elt);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            Text("Day ${days.indexOf(elt) + 1}", style: kTitleTextStyle,),
                            SizedBox(height: 5.0,),
                            Text(elt, style: TextStyle(color: kTextLightColor),),
                            Container(
                              height: 5.0,
                              width: 70,
                              color: _daysIndex == days.indexOf(elt) ? kButtonColor : Colors.transparent,
                              margin: EdgeInsets.only(top: 21.0),
                            )
                          ],
                        ),
                      )
                    )).toList()
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        for (var activity in activities)
                          ActivityItem(activity: activity),
                        SizedBox(height: kDefaultPadding,),
                        InkWell(
                          onTap: (){},
                          child: LargeButton(
                            text: "Add activity",
                            colour: kButtonColorAccent,
                            textColor: kButtonColor,
                          )
                        )
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddHotelFlight()));
                      },
                      child: LargeButton(
                        text: "Next step",
                        colour: kButtonColor,
                      )
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
