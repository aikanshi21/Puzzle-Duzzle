import 'package:flutter/material.dart';
import 'dart:math';

class MediumLevel extends StatefulWidget {
  @override
  State<MediumLevel> createState() => _MediumLevelState();
}

class _MediumLevelState extends State<MediumLevel> {
  dynamic listImagesnotFound = [
    "assets/Medium/pc4.jpeg",
    "assets/Medium/pic1.PNG",
    "assets/Medium/pic3.PNG",
    "assets/Medium/pic7.PNG",
    "assets/Medium/pic11.PNG",
  ];
  late Random rnd;

  @override
  Widget build(BuildContext context) {
    int min = 0;
    int max = listImagesnotFound.length - 1;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    String image_name = listImagesnotFound[r].toString();
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: Image.asset(
              image_name,
              width: constraints.biggest.width,
              height: constraints.biggest.width,
            ),
          );
        },
      ),
    );
  }
}
