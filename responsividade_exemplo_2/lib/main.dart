import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          minWidth: 450,
          defaultName: MOBILE,
          breakpoints: [
           const ResponsiveBreakpoint.resize(450, name: MOBILE),
           const ResponsiveBreakpoint.resize(700, name: TABLET),
           const ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ]

        ),
        home: const HomePage());
  }
}
