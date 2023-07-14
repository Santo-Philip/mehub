import 'package:flutter/material.dart';
import 'package:mehub/screens/homepage/desktop/home_desktop.dart';
import 'package:mehub/screens/homepage/mobile/mobilehome.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 720) {
          return const Home720B();
        } else {
          return const Home720A();
        }
      }),
    );
  }
}


// medium: 600px to 899px
// small: 375px to 599px
// xsmall: 374px or less