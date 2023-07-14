import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mehub/constanst/strings.dart';
import 'package:mehub/screens/homepage/widgets/footer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeFirstCard extends StatelessWidget {
  const HomeFirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        height: context.safePercentHeight * 95,
        width: context.safePercentWidth * 48,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: context.safePercentHeight * 15,
                  child: ListView(padding: EdgeInsets.zero, children: [
                    Row(
                      children: [
                        SizedBox(
                          height: context.safePercentHeight * 10,
                          width: context.safePercentHeight * 10,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                
                                image: AssetImage('/logo/logo.png'))
                            ),
                          ),
                        ),
                        'MeHub'.text.headline3(context).tighter.bold.make(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText('Welcome to our extraordinary realm'),
                        TyperAnimatedText(
                            'where entertainment meets commerce and'),
                        TyperAnimatedText(
                            'connections fuel remarkable experiments'),
                      ],
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      displayFullTextOnTap: true,
                    )
                  ]),
                ),
              ),
              SizedBox(
                  height: context.safePercentHeight * 40,
                  child: Lottie.network(
                      'https://assets4.lottiefiles.com/packages/lf20_M9p23l.json')),
              MainStrings()
                  .description
                  .text
                  .maxLines(5)
                  .ellipsis
                  .make()
                  .p(33),
             const MainFooter()
            ],
          ),
        ),
      ),
    );
  }
}
