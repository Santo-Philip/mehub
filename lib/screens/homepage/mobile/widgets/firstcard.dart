import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mehub/constanst/strings.dart';
import 'package:velocity_x/velocity_x.dart';

class First720BCard extends StatelessWidget {
  const First720BCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minHeight: context.safePercentHeight * 60,
          minWidth: context.safePercentWidth * 95),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                height: context.safePercentHeight * 10,
                width: context.safePercentHeight * 10,
                child: Container(
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('/logo/logo.png'))),
                ),
              ).pOnly(left: 16),
              'MeHub'.text.headline3(context).bold.make().p16(),
            ],
          ),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('Welcome to our extraordinary realm'),
              TyperAnimatedText('where entertainment meets commerce and'),
              TyperAnimatedText('connections fuel remarkable experiments'),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
            displayFullTextOnTap: true,
          ).pOnly(left: 16),
          SizedBox(
              height: context.safePercentHeight * 40,
              child: Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_M9p23l.json')),
          MainStrings()
              .description
              .text
              .justify
              .maxLines(5)
              .ellipsis
              .make()
              .p(33),
        ],
      ),
    );
  }
}
