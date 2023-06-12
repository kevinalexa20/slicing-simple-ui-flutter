import "package:flutter/material.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CardTwo extends StatelessWidget {
  const CardTwo({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 199, 201),
      appBar: AppBar(
          leading: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Card Two", style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 11, 11, 11)),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 200),
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(1, 23, 27, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        GradientText(
                          "New Card Designs",
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                          colors: const [
                            Color.fromRGBO(255, 42, 0, 1),
                            Color.fromRGBO(240, 152, 25, 1),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Minim dolor in amet nulla laboris enim dolore consequat.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 140, 139, 139),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(
                          height: 65,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(MdiIcons.heartOutline,
                                    color: Colors.white, size: 30),
                                const SizedBox(width: 5),
                                const Text(
                                  "20k",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 30),
                            Row(
                              children: [
                                Icon(MdiIcons.shareVariantOutline,
                                    color: Colors.white, size: 30),
                                const SizedBox(width: 5),
                                const Text(
                                  "34",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 30),
                            Row(
                              children: [
                                Icon(MdiIcons.messageProcessingOutline,
                                    color: Colors.white, size: 30),
                                const SizedBox(width: 5),
                                const Text(
                                  "567",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
