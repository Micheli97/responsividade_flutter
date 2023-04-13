import 'package:flutter/material.dart';
import 'package:responsividade/pages/breakpoints.dart';
import 'package:responsividade/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsividade/pages/home/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < BreakPoints.mobileBreakPoints
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 76), child: WebAppBar()),
          drawer: constraints.maxWidth < BreakPoints.mobileBreakPoints ? const Drawer() : null,
        );
      },
    );
  }
}
