import 'package:flutter/material.dart';
import 'package:responsividade/pages/breakpoints.dart';

class AdventureSection extends StatelessWidget {
  const AdventureSection({super.key});

  Widget buildHorizontalAdvantage(
      {required String tile, required String subtitle}) {
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

  Widget buildVerticalAdvantage(
      {required String tile, required String subtitle}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(height: 8),
        Text(
          tile,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= BreakPoints.mobileBreakPoints) {
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildHorizontalAdvantage(
                  tile: "+45.000 alunos", subtitle: "Didática garantida"),
              buildHorizontalAdvantage(
                  tile: "+45.000 alunos", subtitle: "Didática garantida"),
              buildHorizontalAdvantage(
                  tile: "+45.000 alunos", subtitle: "Didática garantida"),
            ],
          ),
        );
      }

      return Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: Row(
          children: [
            Expanded(
              child: buildVerticalAdvantage(
                  tile: "+45.000 alunos", subtitle: "Didática garantida"),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: buildVerticalAdvantage(
                  tile: "+45.000 alunos", subtitle: "Didática garantida"),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: buildVerticalAdvantage(
                  tile: "+45.000 alunos", subtitle: "Didática garantida"),
            ),
          ],
        ),
      );
    });
  }
}
