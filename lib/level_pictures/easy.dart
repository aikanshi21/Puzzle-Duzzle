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
      fit: BoxFit.cover,
    );
  }
}
