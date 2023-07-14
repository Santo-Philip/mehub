import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 'Coming Soon...!'.text.headline1(context).bold.make()
      ),
    );
  }
}