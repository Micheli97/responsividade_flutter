import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuActions extends StatelessWidget {
  const ResponsiveMenuActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [Condition.smallerThan(name: TABLET)],
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        const SizedBox(width: 16),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              "https://codelabs.developers.google.com/static/codelabs/flutter-flame-game/img/afb0fd6677c2a621.png"),
        )
      ],
    );
  }
}
