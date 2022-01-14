import 'package:flutter/material.dart';
import './all_level_pictures.dart';

class Slide_puzzle extends StatelessWidget {
  final String difficultyLevel;

  Slide_puzzle(this.difficultyLevel);

  @override
  Widget build(BuildContext context) {
    double border = 5;

    return Scaffold(
      appBar: AppBar(title: Text(difficultyLevel), centerTitle: true),
      body: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              border: Border.all(width: border, color: Colors.black54)),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                width: 360,
                height: 360,
                child: Column(
                  children: <Widget>[
                    if (difficultyLevel == 'EASY')
                      EasyLevel()
                    else if (difficultyLevel == 'MEDIUM')
                      MediumLevel()
                    else
                      HardLevel()
                  ],
                ),
              );
            },
          )),
    );
  }
}
