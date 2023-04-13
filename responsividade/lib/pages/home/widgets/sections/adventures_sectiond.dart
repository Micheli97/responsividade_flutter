import 'package:flutter/material.dart';

class AdventureSection extends StatelessWidget {
  const AdventureSection({super.key});

  Widget buildAdvantage({required String tile, required String subtitle}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              tile,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvantage(
              tile: "+45.000 alunos", subtitle: "Didática garantida"),
          buildAdvantage(
              tile: "+45.000 alunos", subtitle: "Didática garantida"),
          buildAdvantage(
              tile: "+45.000 alunos", subtitle: "Didática garantida"),
        ],
      ),
    );
  }
}
