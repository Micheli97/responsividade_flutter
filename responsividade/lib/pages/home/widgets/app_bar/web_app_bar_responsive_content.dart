import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      /// O layoutBuilder vai pegar o tamanho da area disponivel para ele
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[600]!)),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        )),
                    const Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Pesquisar"),
                    ))
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
