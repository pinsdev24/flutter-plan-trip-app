import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/location.dart';

class LocationCard extends StatelessWidget {
  final Location location;
  const LocationCard({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 230.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Hero(
                  tag: location.image,
                  child: Image.asset(
                    location.image,
                    fit: BoxFit.cover,
                  ),
                )
            ),
          ),
          Positioned(
            bottom: 1.0,
            right: 1.0,
            left: 1.0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${location.city}, ${location.country}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "from \$${location.pricing["flight"]}",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("${location.rating} ⭐", style: TextStyle(color: Colors.white),)
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
