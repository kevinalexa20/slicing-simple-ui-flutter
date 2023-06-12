import 'package:flutter/material.dart';
import 'package:tugas_1/screens/homepage.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/icons/icon_header_1.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Freelancers',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Text(
            'Minim dolor in amet nulla laboris enim dolore consequat.',
            style: TextStyle(
              color: Color.fromARGB(255, 124, 121, 121),
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
