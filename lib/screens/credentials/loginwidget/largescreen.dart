import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mehub/database/credentials/singup_funtions.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginLarge extends StatelessWidget {
  const LoginLarge({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: context.safePercentHeight * 60,
            width: context.safePercentWidth * 50,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        height: context.safePercentHeight * 10,
                        width: context.safePercentWidth * 10,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('logo/logo.png'),
                            ),
                          ),
                        ),
                      ).onTap(() {
                        Get.toNamed('/');
                      }),
                    ),
                    'Login'.text.headline4(context).bold.make().p12(),
                    VxTextField(
                      controller: userNameController,
                      borderRadius: 20,
                      borderType: VxTextFieldBorderType.roundLine,
                      enabled: true,
                      hint: 'Enter your password',
                    ).p8(),
                    VxTextField(
                      controller: passwordController,
                      borderRadius: 20,
                      borderType: VxTextFieldBorderType.roundLine,
                      enabled: true,
                      hint: 'Enter your password',
                      isPassword: true,
                      obscureText: true,
                    ).p8(),
                    Row(
                      children: [
                        'Don\'t have an account? '.text.make(),
                        'Register'.text.blue800.bold.make().onTap(() {
                          Get.toNamed('/register');
                        })
                      ],
                    ).p16(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            try {
                              final exists = await SignUpFunctions().loginFunction(
                                  userNameController.text,
                                  passwordController.text);
                              if (exists) {
                                Get.showSnackbar(const GetSnackBar(
                                  duration: Duration(
                                    seconds: 3
                                  ),
                                  message: 'Success',
                                ));
                                Get.toNamed('/');
                              } else {
                                Get.showSnackbar(const GetSnackBar(
                                  animationDuration: Duration(seconds: 3),
                                  message: 'login failed try again',
                                ));
                              }
                            } catch (e) {
                              print(e);
                            }
                          },
                          child: const Text('Login'),
                        ).pOnly(right: 10)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
