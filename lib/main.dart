import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Flip a coin',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            fontFamily: 'Cormorant',
          ),
        ),
      ),
      body: Myapp(),
    ),
  ));
}



class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyAppState();
}

class _MyAppState extends State<Myapp> {
  int count=1;
  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  count = Random().nextInt(2)+1;
                });
              },
              child: Image(
                image: AssetImage('images/Head$count.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




