import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.green,
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            alignment: Alignment.center,
            child: const CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  "https://codelabs.developers.google.com/static/codelabs/flutter-flame-game/img/afb0fd6677c2a621.png"
                  // "https://pbs.twimg.com/media/FS37uVZWQAUFsAy.jpg:large",
                  ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "Dash",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
