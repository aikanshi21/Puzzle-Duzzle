import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image/image.dart' as image;

import '../level_pictures/easy.dart';
import '../level_pictures/hard.dart';
import '../level_pictures/medium.dart';

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
          border: Border.all(
            width: border,
            color: Colors.black54,
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.biggest.width,
              height: constraints.biggest.width,
              child: SlidePuzzleWidget(size: constraints.biggest, key: ,),
            );
          },
        ),
      ),
    );
  }
}

class SlidePuzzleWidget extends StatefulWidget {
  Size size;
  double innerpadding;
  SlidePuzzleWidget({
    required Key key,
    required this.size,
    this.innerpadding = 5,
  }) : super(key: key);

  @override
  _SlidePuzzleWidgetState createState() => _SlidePuzzleWidgetState();
}

class _SlidePuzzleWidgetState extends State<SlidePuzzleWidget> {
  GlobalKey _globalKey = GlobalKey();
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = Size(widget.size.width - widget.innerpadding * 2,
        widget.size.width - widget.innerpadding * 2);
    return Container(
      alignment: Alignment.center,
      child: Text('hello'),
    );
  }
  //set up method use

  //get render image

  _getImageFromWidget() async {
    RenderRepaintBoundary boundary =
        _globalKey.currentContext.findRenderObject();

    size = boundary.size;
    var img = await boundary.toImage();
    var byteData = await img.toByteData(format: ImageByteFormat.png);
    var pngBytes = byteData!.buffer.asUint8List();

    return image.decodeImage(pngBytes);
  }

  //method to generate the puzzle
  generatePuzzle() {
    //declaring an array
  }
}

//class use
class SlideObject {
  //setting up offset for default positions
  Offset posDefault;
  Offset posCurrent;
  //index for default positions
  int indexDefault;
  int indexCurrent;
  //status box is empty
  bool empty;
  //size each box
  Size size;                                       
  //image field for cropping later
  Image image;

  SlideObject({
    required this.posDefault,
    required this.posCurrent,
    required this.indexDefault,
    required this.indexCurrent,
    @required this.empty = false,
    required this.size,
    required this.image,
  }); 
}
