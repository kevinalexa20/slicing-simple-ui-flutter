import 'package:flutter/material.dart';

Padding cardFooter() {
  return const Padding(
    padding: EdgeInsets.all(25.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '543 FREELANCERS',
          style: TextStyle(
            color: Color.fromARGB(255, 110, 110, 110),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'VIEW ALL MEMBER',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
