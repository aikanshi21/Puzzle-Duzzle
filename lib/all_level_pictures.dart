import 'package:flutter/material.dart';
import 'dart:math';

class EasyLevel extends StatefulWidget {
  @override
  State<EasyLevel> createState() => _EasyLevelState();
}

class _EasyLevelState extends State<EasyLevel> {
  dynamic listImagesnotFound = [
    "assets/Easy/pc1.jpeg",
    "assets/Easy/pc5.jpeg",
    "assets/Easy/pc6.jpeg",
    "assets/Easy/pic4.PNG",
    "assets/Easy/pic9.PNG",
  ];
  late Random rnd;

  @override
  Widget build(BuildContext context) {
    int min = 0;
    int max = listImagesnotFound.length - 1;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    String image_name = listImagesnotFound[r].toString();
    return Image.asset(
      image_name,
      height: 360,
      width: 360,
    );
  }
}

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
    return Image.asset(image_name);
  }
}

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
