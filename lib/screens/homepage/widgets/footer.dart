import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';

class MainFooter extends StatelessWidget {
  const MainFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.safePercentHeight * 20,
      width: double.maxFinite,
      child: SizedBox(
        height: context.safePercentHeight * 5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('Follow us').text.bold.make(),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                final Uri url = Uri.parse('https://t.me/BlazingSquad');
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              child: const Text('Telegram'),
            )
          ],
        ),
      ),
    );
  }
}
