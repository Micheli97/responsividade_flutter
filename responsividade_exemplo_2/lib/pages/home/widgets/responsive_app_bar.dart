import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'responsive_menu_actions.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
             const Expanded(
                child:  MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Flutter",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: const [Condition.largerThan(name: MOBILE)],
                child: Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 4),
                      child: Row(
                        children: const [
                          Icon(Icons.search, size: 15),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                              child: TextField(
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            decoration: InputDecoration(
                                border: InputBorder.none, isCollapsed: true),
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const ResponsiveVisibility(
                  visible: false,
                  visibleWhen: [Condition.largerThan(name: MOBILE)],
                  replacement: ResponsiveMenuActions(),
                  child: Expanded(child: ResponsiveMenuActions()))
            ],
          ),
        ),
      ),
    );
  }
}
