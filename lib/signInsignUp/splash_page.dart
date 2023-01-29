import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_code/signInsignUp/sign_in_page.dart';
import 'package:speed_code/theme/theme.dart';
import 'package:speed_code/widgets/custom_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInLeft(
            duration: const Duration(milliseconds: 600),
            delay: const Duration(milliseconds: 900),
            child: Center(
              child: Image.asset(
                'images/images1.png',
                width: 250,
                height: 170,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          FadeInRight(
            duration: const Duration(milliseconds: 800),
            delay: const Duration(milliseconds: 1200),
            child: Text(
              'Welcome to My Apps',
              style: blackTextStyle.copyWith(
                fontSize: 22,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            delay: const Duration(milliseconds: 1300),
            child: Text(
              'Stay at home and you\'ll learn\nprogramming until you\'re goog',
              style: greyTextStyle.copyWith(
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          FadeInRight(
            duration: const Duration(milliseconds: 1200),
            delay: const Duration(milliseconds: 1500),
            child: SizedBox(
              height: 45,
              width: 200,
              child: CustomButton(
                title: 'Continu',
                onPressed: () {
                  Get.to(
                    SingInPage(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
