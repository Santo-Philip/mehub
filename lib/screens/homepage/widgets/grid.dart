import 'package:flutter/material.dart';
import 'package:mehub/screens/homepage/widgets/gridcard.dart';
import 'package:mehub/screens/homepage/widgets/index.dart';

class GridMain extends StatelessWidget {
  const GridMain({super.key});

  @override
  Widget build(BuildContext context) {
       final List<Widget> cardList = CardList.map((cardIndex) {
      return CardWidget(cardIndex: cardIndex);
    }).toList();
    return   Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: cardList,
            ),
          );
  }
}