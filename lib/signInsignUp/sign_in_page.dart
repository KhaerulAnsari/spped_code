import 'package:animate_do/animate_do.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_code/signInsignUp/sign_up_page.dart';
import 'package:speed_code/theme/theme.dart';
import 'package:speed_code/widgets/custom_button.dart';
import 'package:speed_code/widgets/custom_snackbar.dart';
import 'package:speed_code/widgets/custom_text_field.dart';

class SingInPage extends StatefulWidget {
  SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isVisible = false;

  formValidate() {
    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      return snackbar('Form can be not Empty.');
    } else if (!EmailValidator.validate(emailController.text)) {
      snackbar('Email format not supported');
    } else {
      // Action
      Get.to(SignUpPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 90,
            ),
            FadeInLeft(
              duration: const Duration(milliseconds: 600),
              delay: const Duration(milliseconds: 900),
              child: Center(
                child: Image.asset(
                  'images/images2.png',
                  height: 250,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 800),
              delay: const Duration(milliseconds: 1200),
              child: Text(
                'Sign In',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 1000),
              delay: const Duration(milliseconds: 1500),
              child: CustomTextField(
                title: 'Email',
                hintText: 'Type your email address..',
                textEditingController: emailController,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 1200),
              delay: const Duration(milliseconds: 1800),
              child: CustomTextField(
                title: 'Password',
                hintText: 'Type your password...',
                obscureText: !_isVisible,
                iconForm: 'images/icon_password.png',
                textEditingController: passwordController,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  icon: _isVisible
                      ? Icon(
                          Icons.visibility,
                          color: blackColor,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                ),
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 1400),
              delay: const Duration(milliseconds: 2100),
              child: SizedBox(
                height: 45,
                width: double.infinity,
                child: CustomButton(
                  title: 'Login Now',
                  onPressed: () {
                    formValidate();
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 1600),
              delay: const Duration(milliseconds: 2400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an Account?',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignUpPage());
                    },
                    child: Text(
                      ' Create Account',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                        color: const Color(0xFF057798),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
