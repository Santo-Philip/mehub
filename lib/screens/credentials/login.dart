import 'package:flutter/material.dart';
import 'package:mehub/screens/credentials/loginwidget/largescreen.dart';
import 'loginwidget/smallscreen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 720) {
            return const LoginLarge();
          } else {
            return const LoginSmall();
          }
        },
      ),
    );
  }
}
