import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/components/large_button.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/screens/details/read_more.dart';
import 'package:travel_app/screens/plan_trip/new_plan.dart';

class LocationDetails extends StatelessWidget {
  final Location location;
  const LocationDetails({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Hero(
              tag: location.image,
              child: Image.asset(
                location.image,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(location.city + ", " + location.country, style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: kDefaultPadding,),
                    Text(location.text, style: TextStyle(color: Colors.grey[100])),
                    SizedBox(height: kDefaultPadding,),
                    Row(
                      children: [
                        for(int i=1; i<= location.start; i ++ )
                          Text("⭐ "),
                        SizedBox(width: 10,),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: "${location.rating} ", style: TextStyle(color: Colors.white)),
                              TextSpan(text: "(${location.reviews} reviews)", style: TextStyle(color: Colors.grey[500])),
                            ]
                          )
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){},
                          child: Text("See reviews", style: TextStyle(color: Colors.white),)
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ReadMore(location: location)));
                            },
                            child: LargeButton(text: "Read more", colour: Colors.black54)
                          )
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => NewPlan(location: location,)));
                            },
                            child: LargeButton(
                              text: "Plan trip", colour : kButtonColor
                            )
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
