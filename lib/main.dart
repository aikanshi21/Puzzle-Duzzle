import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Puzzle Duzzle',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puzzle Duzzle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Puzzle Duzzle!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {},
              child: const Text('Play!'),
            ),

            RaisedButton(
              onPressed: () {},
              child: const Text('Help'),
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text('About'),
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text('Settings'),
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text('Exit'),
            ),
          ],
        ),
      ),
    );
  }
}
