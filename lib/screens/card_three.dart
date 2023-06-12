import "package:flutter/material.dart";
import "package:step_progress_indicator/step_progress_indicator.dart";

class CardThree extends StatelessWidget {
  const CardThree({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text("Card Three"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Container(
                margin: const EdgeInsets.only(top: 200),
                width: 360,
                height: 377,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 195, 91),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      //header content
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Transform.translate(
                            offset: const Offset(0, 0),
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/users/profile_1.png'),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(-10, 0),
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/users/profile_2.png'),
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(-65, 0),
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/users/profile_3.png'),
                            ),
                          ),
                          Transform.translate(
                              offset: const Offset(-120, 0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                                child: const Center(
                                  child: Text(
                                    '+3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      //body content
                      const Text(
                        'Web Design templates Selection',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 67, 66, 66),
                        ),
                      ),
                      const SizedBox(
                        height: 65,
                      ),

                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 177),
                            child: Text(
                              '135 Works / 45%',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 32,
                            size: 8,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.black, Colors.black],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(174, 158, 158, 158),
                                Color.fromARGB(174, 158, 158, 158)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      )),
    );
  }
}
