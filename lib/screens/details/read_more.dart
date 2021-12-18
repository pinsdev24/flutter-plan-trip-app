import 'package:flutter/material.dart';
import 'package:travel_app/components/large_button.dart';
import 'package:travel_app/components/preference_elt.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/screens/plan_trip/new_plan.dart';

class ReadMore extends StatelessWidget {
  final Location location;
  const ReadMore({Key? key, required this.location}) : super(key: key);

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
        height: MediaQuery.of(context).size.height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              location.image,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 2 / 3,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 260,
              left: 60,
              child: Text(
                location.city + ", " + location.country,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 320.0,
              left: 00.0,
              right: 0.0,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About " + location.city,
                      style: kTitleTextStyle,
                    ),
                    SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    Text(location.text,
                        style: TextStyle(color: kTextLightColor)),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Row(
                      children: [
                        for (int i = 1; i <= location.start; i++) Text("⭐ "),
                        SizedBox(
                          width: 10,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: "${location.rating} "),
                          TextSpan(
                              text: "(${location.reviews} reviews)",
                              style: TextStyle(color: Colors.grey[500])),
                        ])),
                        Spacer(),
                        InkWell(onTap: () {}, child: Text("See reviews"))
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      "Pricing",
                      style: kTitleTextStyle,
                    ),
                    PreferenceItem(
                      icon: Icons.airplanemode_active,
                      iconColor: Colors.blue,
                      bgColorIcon: Color(0xFF968FA0),
                      name: "Flight",
                      desc: "from \$${location.pricing["flight"]}",
                    ),
                    PreferenceItem(
                        icon: Icons.bed,
                        iconColor: Colors.orangeAccent,
                        bgColorIcon: Color(0xFFC4AA86),
                        name: "Hotel",
                        desc: "from \$${location.pricing["Hotel"]}"),
                    SizedBox(
                      height: kDefaultPadding / 2,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewPlan(
                                        location: location,
                                      )));
                        },
                        child: LargeButton(
                            text: "Plan trip", colour: kButtonColor)),
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
