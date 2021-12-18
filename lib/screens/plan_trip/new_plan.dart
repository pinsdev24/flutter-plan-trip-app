import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:travel_app/components/large_button.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/screens/plan_trip/add_day_plans.dart';

class NewPlan extends StatefulWidget {
  final Location location;
  const NewPlan({Key? key, required this.location}) : super(key: key);

  @override
  _NewPlanState createState() => _NewPlanState();
}

class _NewPlanState extends State<NewPlan> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Plan", style: kTitleTextStyle,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          widget.location.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Destination",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),
                            ),
                            Text(widget.location.city + " " + widget.location.country, style: TextStyle(
                                color: Colors.white,
                                fontSize: 22
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: kDefaultPadding ,),
                Row(
                  children: [
                    Text("Select dates", style: kTitleTextStyle,),
                  ],
                ),
                SizedBox(height: 5),
                TableCalendar(
                  focusedDay: selectedDay,
                  firstDay: DateTime.utc(2021, 9),
                  lastDay: DateTime.utc(2024, 1),
                  headerVisible: true,
                  headerStyle: HeaderStyle(
                      headerPadding: EdgeInsets.symmetric(vertical: 0.0)
                  ),
                  onDaySelected: (DateTime focusDay, DateTime selectDay){
                    setState(() {
                      selectedDay = selectDay;
                      focusedDay = focusDay;
                    });
                  },
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: true,
                    selectedDecoration: BoxDecoration(
                      color: kButtonColor,
                    ),
                    selectedTextStyle: TextStyle(color: Colors.white)
                  ),
                ),
                SizedBox(height: kDefaultPadding,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("add People", style: TextStyle(
                        color: kTitleTextColor,
                        fontWeight: FontWeight.w700
                    ),),
                    SizedBox(height: kDefaultPadding / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Search People",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          height: 50.0,
                          width: 50,
                          decoration: BoxDecoration(
                              color: kButtonColor,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(
                            child: Icon(Icons.airplanemode_active_outlined, color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Row(
                      children: [
                        Text("Send invites via e-mail"),
                        Spacer(),
                        Icon(Icons.toggle_on, size: 35 , color: kButtonColor,)
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddDayPlans()));
                        },
                        child: LargeButton(text: "Next Step", colour: kButtonColor)
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

