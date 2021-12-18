import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/components/browser_activity_card.dart';
import 'package:travel_app/components/location_card.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/models/rubric.dart';
import 'package:travel_app/screens/details/location_details.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find, your next tip",
                  style: TextStyle(color: kTextLightColor, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 5.0,),
                Text("Explore destinations", style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700
                ),)
              ],
            ),
            SizedBox(height: kDefaultPadding,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: 250,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: kDefaultPadding,),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Icon(FontAwesomeIcons.hamburger, color: Colors.white, size: 20,),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding * 2),
            Text("Popular locations", style: kTitleTextStyle,),
            SizedBox(height: kDefaultPadding,),
            Container(
              height: 160.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: locations.length,
                  itemBuilder: (BuildContext context,int index) {
                    Location location = locations[index];
                    return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LocationDetails(location: location)));
                        },
                        child: LocationCard(location: location)
                    );
                  }
              ),
            ),
            SizedBox(height: kDefaultPadding *2),
            Text("Browser by activity", style: kTitleTextStyle,),
            SizedBox(height: kDefaultPadding,),
            Container(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rubrics.length,
                    itemBuilder: (BuildContext context, int index) {
                      Rubric rubric = rubrics[index];
                      return BrowserActivityCard(rubric: rubric);
                    }
                )
            ),
            SizedBox(height: kDefaultPadding *2),
          ],
        ),
      ),
    );
  }
}
