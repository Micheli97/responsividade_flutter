import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Row(
          children: [
            const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Flutter",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
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
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
      elevation: 1,
    );
  }
}
