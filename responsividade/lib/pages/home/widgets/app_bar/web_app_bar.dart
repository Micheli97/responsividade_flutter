import 'package:flutter/material.dart';
import 'package:responsividade/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text("Flutter"),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                ),
              ),
              child: const Text(
                "Fazer login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text(
                "Cadastre-se",
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
