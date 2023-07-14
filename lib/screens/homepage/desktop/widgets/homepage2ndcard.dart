import 'package:flutter/material.dart';
import 'package:mehub/screens/homepage/desktop/widgets/home_reg_card.dart';
import 'package:mehub/screens/homepage/widgets/grid.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeSeconCard extends StatelessWidget {
  const HomeSeconCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.safePercentHeight * 100,
      width: context.safePercentWidth * 48,
      child: ListView(children: [
        'Hey..! Welcome'
            .text
            .bold
            .tight
            .headline4(context)
            .make()
            .p12()
            .pOnly(top: 40,bottom: 30),
        const RegCardHome(),
        'Features..!'.text.bold.tight.headline4(context).make().pOnly(top: 12,left: 12),
        'Start Exploring'.text.make().p12(),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: GridMain(),
        )
      ]),
    );
  }
}
