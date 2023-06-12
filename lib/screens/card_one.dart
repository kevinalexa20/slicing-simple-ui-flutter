import 'package:flutter/material.dart';
import '../src/common_widget/user_profile.dart';
import 'card1/footer_one.dart';
import 'card1/header_one.dart';
import 'card1/search_content.dart';

class CardOne extends StatelessWidget {
  const CardOne({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const HeaderCard(),
            searchContent(),
            //CARD BODY CONTENT
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  UserProfile(
                    photoUrl: 'assets/users/profile_1.png',
                    name: 'Wade Warren',
                    position: 'Dog Trainer',
                  ),
                  UserProfile(
                    photoUrl: 'assets/users/profile_2.png',
                    name: 'Robert Fox',
                    position: 'President of Sales',
                  ),
                  UserProfile(
                    photoUrl: 'assets/users/profile_3.png',
                    name: 'Jane Copper',
                    position: 'Nursing Assistant',
                  ),
                  UserProfile(
                    photoUrl: 'assets/users/profile_4.png',
                    name: 'Natalia',
                    position: 'Software Tester',
                  ),
                ],
              ),
            ),
            //CARD FOOTER CONTENT
            cardFooter(),
          ],
        ),
      ),
    );
  }
}
