import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/components/add_hotel.dart';
import 'package:travel_app/components/large_button.dart';
import 'package:travel_app/constant.dart';

class AddHotelFlight extends StatelessWidget {
  const AddHotelFlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add hotel and flights", style: kTitleTextStyle,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hotel", style: kTitleTextStyle),
              SizedBox(height: kDefaultPadding,),
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
                        "assets/images/trip.jpg",
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
                          Text("Hanging Gardens of Bali Hotel", style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              for(int i=1; i<= 4; i ++ )
                                Text("⭐ "),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: kDefaultPadding),
              Text("Flights", style: kTitleTextStyle),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlightPlan(code: "QUE", date: "20.03, 06:30 AM", flagImage: "assets/images/canada_flag.jpg"),
                  Icon(Icons.arrow_forward),
                  FlightPlan(code: "DLA", date: "20.03, 01:30 PM", flagImage: "assets/images/cmr_flag.jpg"),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              Text("Costs", style: kTitleTextStyle),
              SizedBox(height: kDefaultPadding),
              Column(
                children: [
                  Row(
                    children: [
                      Text("Hotel (4 nights)", style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      )),
                      Spacer(),
                      Text("\$796", style: TextStyle(color: kButtonColor, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: kDefaultPadding/2),
                  Row(
                    children: [
                      Text("Flights", style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      )),
                      Spacer(),
                      Text("\$861", style: TextStyle(color: kButtonColor, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: kDefaultPadding/2),
                  Row(
                    children: [
                      Text("Total", style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      )),
                      Spacer(),
                      Text("\$1657", style: TextStyle(color: kButtonColor, fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
              SizedBox(height: kDefaultPadding + 10),
              GestureDetector(
                onTap: (){},
                child: LargeButton(text: "Create trip plan", colour: kButtonColor,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
