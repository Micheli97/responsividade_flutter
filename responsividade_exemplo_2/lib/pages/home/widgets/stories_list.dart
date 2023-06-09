import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsividade_exemplo_2/pages/home/widgets/story_circle.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110,
      margin: EdgeInsets.only(top: mobile ? 15 : 30),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: 16,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder: (_, index) => const StoryCircle()),
    );
  }
}
