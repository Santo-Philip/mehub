import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class RegCardHome extends StatelessWidget {
  const RegCardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
          height: context.safePercentHeight * 50,
          decoration: BoxDecoration(
              color: Get.isDarkMode ? const Color(0xFF334B45) : const Color(0xFF79DA9F),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              SizedBox(
                child: Container(
                  height: context.safePercentHeight * 40,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        Get.isDarkMode ? const Color(0xFFC9CA93) : const Color(0xFF1B201D),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      'New here then'.text.color(Get.isDarkMode ? const Color(0xFFDEE1DB) : const Color(0xFFDEE1DB)).make().pOnly(left: 20),
                      'Get Started'
                          .text
                          .color(Get.isDarkMode
                              ? const Color(0xFF1B241F)
                              : const Color(0xFFE1E3DE))
                          .headline3(context)
                          .bold
                          .make()
                          .pOnly(left: 20),
                      SizedBox(
                        height: context.safePercentHeight * 10,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Get.isDarkMode
                                      ? const Color(0xFF1B201D)
                                      : const Color(0xFFC9CA93)),
                              elevation: MaterialStateProperty.all(30)),
                          onPressed: () {
                            Get.toNamed('/register');
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? const Color(0xFFC9C9A5)
                                    : const Color(0xFF1B241F)),
                          ))
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Already have an account ?'
                      .text
                      .bold
                      .ellipsis
                      .make()
                      .pOnly(left: 20),
                  ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(10)),
                          onPressed: () {
                            Get.toNamed('/login');
                          },
                          child: 'Login'.text.make())
                      .pOnly(top: 10, right: 20)
                ],
              )
            ],
          )),
    );
  }
}
