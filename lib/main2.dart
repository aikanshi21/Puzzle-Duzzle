import 'package:flutter/material.dart';
import 'dart:io';

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
                onPressed: () {},
                child: const Text('EASY'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('MEDIUM'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
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
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.backspace),
        ));
  }
}
