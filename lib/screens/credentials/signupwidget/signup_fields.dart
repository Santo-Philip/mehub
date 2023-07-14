import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mehub/database/credentials/signup_models.dart';
import 'package:mehub/database/credentials/singup_funtions.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpFields extends StatelessWidget {
  const SignUpFields({Key? key}) : super(key: key);

  void _addUser(String name, String username, String email, String password) {
    SignUpModel user = SignUpModel(
      name: name,
      username: username,
      email: email,
      password: password,
      date: DateTime.now(),
    );

    SignUpFunctions signUpFunctions = SignUpFunctions();
    signUpFunctions.addUser(user);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
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
        'Register'.text.bold.headline4(context).make().p8(),
        VxTextField(
          counterText: 'Type the name you want to display',
          borderRadius: 20,
          borderType: VxTextFieldBorderType.roundLine,
          hint: 'Name',
          prefixIcon: const Icon(Icons.person_2_sharp),
          controller: nameController,
        ),
        SizedBox(
          height: context.safePercentHeight * 4,
        ),
        VxTextField(
          borderRadius: 20,
          borderType: VxTextFieldBorderType.roundLine,
          counterText: 'Atleast 7 letters',
          hint: 'Username',
          prefixIcon: const Icon(Icons.person_2_sharp),
          controller: usernameController,
        ),
        SizedBox(
          height: context.safePercentHeight * 4,
        ),
        VxTextField(
          borderRadius: 20,
          borderType: VxTextFieldBorderType.roundLine,
          hint: 'Enter your email',
          prefixIcon: const Icon(Icons.person_2_sharp),
          controller: emailController,
        ),
        SizedBox(
          height: context.safePercentHeight * 4,
        ),
        VxTextField(
          borderRadius: 20,
          borderType: VxTextFieldBorderType.roundLine,
          hint: 'Enter password',
          prefixIcon: const Icon(Icons.person_2_sharp),
          isPassword: true,
          obscureText: true,
          controller: passwordController,
        ),
        SizedBox(
          height: context.safePercentHeight * 4,
        ),
        VxTextField(
          borderRadius: 20,
          borderType: VxTextFieldBorderType.roundLine,
          hint: 'Confirm password',
          prefixIcon: const Icon(Icons.person_2_sharp),
          isPassword: true,
          obscureText: true,
          controller: confirmPasswordController,
        ),
        SizedBox(
          height: context.safePercentHeight * 4,
        ),
        Row(
          children: [
            'Already have an account? '.text.make(),
            'Login'.text.bold.blue300.make().onTap(() {
              Get.toNamed('/login');
            })
          ],
        ),
        Center(
          child: ElevatedButton(
            onPressed: () async {
              String name = nameController.text;
              String username = usernameController.text;
              String email = emailController.text;
              String password = passwordController.text;
              String confirmPassword = confirmPasswordController.text;

               try {
                bool exists = await SignUpFunctions().isExist(username);
                if (password == confirmPassword && 
                    password.length >= 8 &&
                    username.length >= 7 &&
                    !exists) {
                  _addUser(name, username, email, password);
                  await Get.toNamed('/');
                } else {
                  Get.showSnackbar(GetSnackBar(
                  duration: Duration(
                    seconds: 3
                  ),
                  message: 'Attempt failed try again',
                  ));
                }
              } catch (e) {
                print(e);
              }
            },
            child: const Text('Register'),
          ).p16(),
        ),
      ],
    );
  }
}
