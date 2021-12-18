import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/components/discount_item.dart';
import 'package:travel_app/constant.dart';

class Discount extends StatelessWidget {
  const Discount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Stack(
            children: [
              Positioned(child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.explore, color: Color(0xFFB975DB), size: 28.0,),
                      SizedBox(width: 10,),
                      Text("Your Discounts", style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700
                      ),)
                    ],
                  ),
                  SizedBox(height: kDefaultPadding,),
                  Text("We prepared some amazing discounts for your next tips. we hope they will be useful!",
                    style: TextStyle(color: kTextLightColor, fontSize: 16),
                  ),
                  SizedBox(height: kDefaultPadding,),
                  DiscountItem(icon: FontAwesomeIcons.tripadvisor, name: "15% hotel discount", desc: "tripadvisor.com - valid until 24/07"),
                  DiscountItem(icon: FontAwesomeIcons.airbnb, name: "50% of First Class", desc: "wizzAir.com - valid until 23/08"),
                  DiscountItem(icon: FontAwesomeIcons.airFreshener, name: "20% of All flights", desc: "wizzAir.com - valid until 23/08"),
                ],
              )),
              Positioned(
                bottom: 10.0,
                child: Text("Create more plans to get more discounts!")
              )
            ],
          ),
        ),
      ),
    );
  }
}
