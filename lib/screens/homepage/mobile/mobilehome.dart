import 'package:flutter/material.dart';
import 'package:mehub/screens/homepage/widgets/footer.dart';
import 'package:mehub/screens/homepage/desktop/widgets/home_reg_card.dart';
import 'package:mehub/screens/homepage/mobile/widgets/firstcard.dart';
import 'package:mehub/screens/homepage/widgets/grid.dart';
import 'package:velocity_x/velocity_x.dart';


class Home720B extends StatelessWidget {
  const Home720B({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      body: ListView(
        children: [
          const First720BCard(),
          const RegCardHome(),
          'Features '.text.headline4(context).bold.tight.make().p20(),
          const GridMain(),
          const MainFooter()
        
        ],
      ),
    );
  }
}



