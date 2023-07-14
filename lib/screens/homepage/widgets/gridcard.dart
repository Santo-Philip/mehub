import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mehub/screens/homepage/widgets/index.dart';
import 'package:velocity_x/velocity_x.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.cardIndex}) : super(key: key);
  final CardIndex cardIndex;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Get.toNamed(cardIndex.routepath);
      },
      child: Stack(
        children: [
          Lottie.network(cardIndex.lottiebg),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 3,
              ),
            color: const Color.fromARGB(92, 0, 0, 0),
            ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  cardIndex.heading.text.color(Get.isDarkMode ? const Color(0xFFE6E6AD) : const Color(0xFFE1E3DE)).headline6(context).bold.make().pOnly(right: 20),
                  cardIndex.description.text.color(Get.isDarkMode ? const Color(0xFF8A938B) : const Color(0xFFC9C9A5)).hairLine.ellipsis.make().pOnly(right: 14)
                ],),
          ),
        ],
      )
    );
  }
}