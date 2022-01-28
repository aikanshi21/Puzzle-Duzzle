import 'package:flutter/material.dart';
import 'dart:io';

import '../game/slide_puzzle.dart';

class Levels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LEVELS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Slide_puzzle('EASY'),
                  ),
                );
              },
              child: const Text('EASY'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Slide_puzzle('MEDIUM'),
                  ),
                );
              },
              child: const Text('MEDIUM'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Slide_puzzle('HARD'),
                  ),
                );
              },
              child: const Text('HARD'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('SAVED PROGRESS'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
