import 'package:flutter/material.dart';
import 'package:responsividade_exemplo_2/pages/home/widgets/responsive_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
      preferredSize: Size(double.infinity, 52),
      child: ResponsiveAppBar(),
    ));
  }
}
