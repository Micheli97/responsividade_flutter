import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Container(
            height: 250,
            width: 250,
            color: Colors.pinkAccent,
          ),
          Container(
            height: 250,
            width: 250,
            color: Colors.green,
          ),
          Container(
            height: 250,
            width: 250,
            color: Colors.yellow,
          ),
          Container(
            height: 250,
            width: 250,
            color: Colors.blue,
          ),
          Container(
            height: 250,
            width: 250,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
