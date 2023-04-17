import 'package:flutter/material.dart';
import 'package:responsividade_exemplo_2/pages/home/widgets/responsive_app_bar.dart';

import 'widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: ListView(
            children: const [
              StoriesList()
            ],
          ),
        ),
      ),
    );
  }
}
