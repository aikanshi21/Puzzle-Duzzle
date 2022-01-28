import 'package:flutter/material.dart';
import 'dart:math';

class HardLevel extends StatefulWidget {
  @override
  State<HardLevel> createState() => _HardLevelState();
}

class _HardLevelState extends State<HardLevel> {
  dynamic listImagesnotFound = [
    "assets/Hard/pc8.jpeg",
    "assets/Hard/pic2.PNG",
    "assets/Hard/pic5.PNG",
    "assets/Hard/pic6.PNG",
    "assets/Hard/pic10.PNG",
  ];
  late Random rnd;

  @override
  Widget build(BuildContext context) {
    int min = 0;
    int max = listImagesnotFound.length - 1;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    String image_name = listImagesnotFound[r].toString();
    return Image.asset(image_name);
  }
}
