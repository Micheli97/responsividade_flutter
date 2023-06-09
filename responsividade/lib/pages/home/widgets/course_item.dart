import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://coodesh.com/blog/wp-content/uploads/2021/10/mobile-flutter-1-scaled.jpg",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const AutoSizeText(
                "Criação de Apps Android e iOS com Flutter",
                minFontSize: 3,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              );
            },
          ),
        ),
        const Text(
          "Violetta Dumont",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const Text(
          "R\$22,90",
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
