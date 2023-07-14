import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';


class ShortLinkPage extends StatelessWidget {
  const ShortLinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: context.safePercentWidth * 60,
            child: Column(
              children: [
                SizedBox(
                      height: context.safePercentHeight *20,
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: context.safePercentHeight * 10,
                      width: context.safePercentWidth * 10,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('logo/logo.png'),)
                        ),
                      ),
                    ).onTap(() {Get.toNamed('/');}),
                    'Short Link'.text.bold.headline3(context).make().pOnly(right: 30)
                  ],

                ),
                SizedBox(
                  height: context.safePercentHeight * 20,
                ),
                const VxTextField(
                  borderRadius: 20,
                  borderType: VxTextFieldBorderType.roundLine,
                ),
              OutlinedButton(onPressed: (){}, child: const Text('Get Link')).centered().p16()
              ],
            ),
          ),
        ),
      )
    );
  }
}