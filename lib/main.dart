import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mehub/constanst/themedata.dart';
import 'package:mehub/database/credentials/signup_models.dart';
import 'package:mehub/screens/address/adressgen.dart';
import 'package:mehub/screens/blogs/blogs.dart';
import 'package:mehub/screens/credentials/login.dart';
import 'package:mehub/screens/credentials/signup.dart';
import 'package:mehub/screens/creditcard/creditcard.dart';
import 'package:mehub/screens/homepage/homepage.dart';
import 'package:mehub/screens/link/shortlink.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:mehub/database/shortlink/linksmodel.dart';

void main() async {
  Vx.setPathUrlStrategy();
  await Hive.initFlutter();
  Hive.registerAdapter(SignUpModelAdapter());
  Hive.registerAdapter(LinkModelAdapter());
  runApp(const MeHub());
}

class MeHub extends StatelessWidget {
  const MeHub({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomThemeData.lightTheme,
      darkTheme: CustomThemeData.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      enableLog: true,
      getPages: [
        GetPage(name: '/', page:() => const Homepage()),
        GetPage(name: '/login', page:() => const LoginPage()),
        GetPage(name: '/register', page:() => const SignUpPage()),
        GetPage(name: '/blog', page:() =>const BlogPage()),
        GetPage(name: '/adgen', page:() => const GenAddressPage()),
        GetPage(name: '/sl', page: () =>const ShortLinkPage()),
        GetPage(name: '/cc', page: () => const CreditCardPage())
      ],
    );
  }
}
