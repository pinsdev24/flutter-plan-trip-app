import 'package:flutter/material.dart';
import 'package:travel_app/components/large_button.dart';
import 'package:travel_app/constant.dart';

class TripPlan extends StatefulWidget {
  const TripPlan({Key? key}) : super(key: key);

  @override
  _TripPlanState createState() => _TripPlanState();
}

class _TripPlanState extends State<TripPlan>{
  int _selectedIndex = 0;
  int _daysIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> items = ["Calendar", "Bookings", "Map"];
    List<String> days = ["March 22", "March 23", "March 24"];
    return Column(
      children: [
        Container(
          height: 260,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("⛅ 27°, Oslo"),
                      SizedBox(height: 5.0,),
                      Text("Trip Plan", style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700
                      ),)
                    ],
                  ),
                  Image.asset("assets/images/actor_3.png", width: 40.0, height: 40.0)
                ],
              ),
              SizedBox(height: kDefaultPadding + 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: items.map((elt) => InkWell(
                  onTap: (){
                    setState(() {
                      _selectedIndex = items.indexOf(elt);
                    });
                  },
                  child: Container(
                    height: 40.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: _selectedIndex == items.indexOf(elt) ? kButtonColor : Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0,8),
                            blurRadius: 25,
                            color: kShadowColor
                        )
                      ]
                    ),
                    child: Center(
                      child:Text(
                        elt,
                        style: TextStyle(
                            color: _selectedIndex == items.indexOf(elt) ? Colors.white : Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    )
                  ),
                )).toList()
              ),
              SizedBox(height: kDefaultPadding +10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: days.map((elt) => InkWell(
                  onTap: (){
                    setState(() {
                      _daysIndex = days.indexOf(elt);
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Text("Day ${days.indexOf(elt) + 1}", style: kTitleTextStyle,),
                        SizedBox(height: 5.0,),
                        Text(elt, style: TextStyle(color: kTextLightColor),),
                        Container(
                          height: 5.0,
                          width: 70,
                          color: _daysIndex == days.indexOf(elt) ? kButtonColor : Colors.transparent,
                          margin: EdgeInsets.only(top: 10.0),
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){},
                  child: LargeButton(
                    text: "See on map",
                    colour: kButtonColorAccent,
                    textColor: kButtonColor,
                  )
                ),
              ],
            ),
          )
        )
      ],
    );
  }
}

