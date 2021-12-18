import 'package:flutter/material.dart';
import 'package:travel_app/models/rubric.dart';

class BrowserActivityCard extends StatelessWidget {
  final Rubric rubric;
  const BrowserActivityCard({Key? key, required this.rubric}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
              height: 180,
              width: 130.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    rubric.image,
                    fit: BoxFit.cover,
                  )
              )
          ),
          Positioned(
            left: 10.0,
            right: 10.0,
            bottom: 20.0,
            child: Column(
              children: [
                Text(rubric.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    )
                ),
                Text("${rubric.numberLocation} locations",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
