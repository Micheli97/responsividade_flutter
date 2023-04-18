import 'package:flutter/material.dart';

class ColumnsRowsExpanded extends StatelessWidget {
  const ColumnsRowsExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              height: 250,
              color: Colors.amber,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              height: 250,
              color: Colors.pinkAccent,
            ),
          ),
         

          /*   Expanded(
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.pink,
                ),
                // O expanded ingnora o tamanho definido de seu filho. Ele irá preencher o espaço da tela restante
                Expanded(
                  child: Container(
                    height: 500,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.blue,
          ),
          */
        ],
      ),
    );
  }
}
