import 'package:flutter/material.dart';
import 'package:responsividade/pages/breakpoints.dart';
import 'package:responsividade/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth > 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    "https://pbs.twimg.com/media/FSgl1OfUcAEsiQV.jpg:large",
                    // "https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 50,
                    child: Card(
                      elevation: 8,
                      color: Colors.black,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        width: 450,
                        child: Column(
                          children: const [
                            Text(
                              "Aprenda Flutter com este curso",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Bora aprender Flutter galerinha",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 16),
                            CustomSearchField()
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          );
        }

        if (maxWidth >= BreakPoints.mobileBreakPoints) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    "https://pbs.twimg.com/media/FSgl1OfUcAEsiQV.jpg:large",
                    // "https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096",
                    fit: BoxFit.cover,
                  ),
                ),

                 Positioned(
                    left: 20,
                    top: 20,
                    child: Card(
                      elevation: 8,
                      color: Colors.black,
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        width: 350,
                        child: Column(
                          children: const [
                            Text(
                              "Aprenda Flutter com este curso",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Bora aprender Flutter galerinha",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 16),
                            CustomSearchField()
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}
