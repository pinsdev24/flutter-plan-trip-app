import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity{
  String hour;
  String activity;
  IconData icon;
  
  Activity({
    required this.hour,
    required this.activity,
    required this.icon
  });
}

List<Activity> activities = [
  Activity(hour: "5:30", activity: "Wake Up", icon: Icons.bed),
  Activity(hour: "6:00", activity: "Breakfast", icon: Icons.food_bank),
  Activity(hour: "7:00", activity: "Surfing", icon: Icons.bed),
  Activity(hour: "9:30", activity: "Sunbathing", icon: Icons.cloud),
];