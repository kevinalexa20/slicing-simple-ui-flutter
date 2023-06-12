import 'package:flutter/material.dart';
import 'package:tugas_1/screens/card_one.dart';
import 'package:tugas_1/screens/card_three.dart';

import '../src/common_widget/button.dart';
import 'card_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 1 - Slicing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              text: 'Card Ke-1',
              onTap: () {},
              type: ButtonType.primary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardOne(key: Key('cardOne')),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'Card Ke-2',
              onTap: () {},
              type: ButtonType.primary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardTwo(key: Key('cardTwo')),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'Card Ke-3',
              onTap: () {},
              type: ButtonType.primary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const CardThree(key: Key('cardThree')),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
