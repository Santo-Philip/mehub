import 'package:flutter/material.dart';
import 'package:mehub/screens/homepage/desktop/widgets/home_first_card.dart';
import 'package:mehub/screens/homepage/desktop/widgets/homepage2ndcard.dart';

class Home720A extends StatelessWidget {
  const Home720A({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeFirstCard(),
                    HomeSeconCard()
                  ],
                )
              ],
            ),
    );
  }
}