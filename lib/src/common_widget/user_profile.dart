import 'package:flutter/material.dart';
import 'package:tugas_1/src/common_widget/button.dart';

class UserProfile extends StatelessWidget {
  final String photoUrl;
  final String name;
  final String position;

  const UserProfile({
    super.key,
    required this.photoUrl,
    required this.name,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // User Photo
          Container(
              // decoration: BoxDecoration(
              //   shape: BoxShape.circle,
              //   color: Colors.grey[400],
              // ),
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(photoUrl),
              )),
          //name and position
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  position,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 82, 80, 80),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          //button
          ButtonWidget(
              text: "SMALL",
              type: ButtonType.black,
              onPressed: () {},
              onTap: () {})
        ],
      ),
    );
  }
}
