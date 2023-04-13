import 'package:flutter/material.dart';
import 'package:responsividade/pages/breakpoints.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, crossAxisSpacing: 16, mainAxisSpacing: 16),
        itemCount: 20,
        padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal:
                constraints.maxWidth >= BreakPoints.tabletBreakPoint ? 0 : 16),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red,
          );
        },
      );
    });
  }
}
