import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text("Hello, Pins", style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700
                      ),)
                    ],
                  ),
                  Image.asset("assets/images/actor_3.png", width: 40.0, height: 40.0)
                ],
              ),
              SizedBox(height: kDefaultPadding * 2,),
              Text("Current tip", style: kTitleTextStyle),
              SizedBox(height: kDefaultPadding ,),
              Stack(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/images/montain.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 1.0,
                      right: 1.0,
                      left: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Oslo, norway", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0
                                ),),
                                Text("3 more days", style: TextStyle(
                                  color: Colors.white,
                                ),)
                              ],
                            ),
                            MaterialButton(
                              onPressed: (){},
                              color: kButtonColor,
                              child: Text("Manage", style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: kDefaultPadding ,),
        Expanded(
          child: Container(
            width: width,
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                color: Color(0xffd6d9e2),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Trip Plan", style: kTitleTextStyle,),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        )
      ],
    );
  }
}
