import 'package:flutter/material.dart';
import 'package:mehub/screens/credentials/signupwidget/signup_fields.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 720) {
              return Center(
                  child: SizedBox(
                      width: context.safePercentWidth * 40,
                      child: const SignUpFields()));
            } else {
              return Center(
                child: SizedBox(
                  width: context.safePercentWidth * 80,
                  child: const SignUpFields(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
