import 'package:animate_do/animate_do.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_code/theme/theme.dart';
import 'package:speed_code/widgets/custom_button.dart';

import '../widgets/custom_snackbar.dart';
import '../widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isVisible = false;

  formValidate() {
    if (nameController.text.isEmpty &&
        emailController.text.isEmpty &&
        passwordController.text.isEmpty) {
      return snackbar('Form can be not Empty.');
    } else if (!EmailValidator.validate(emailController.text)) {
      snackbar('Email format not supported');
    } else {
      // Action

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: SingleChildScrollView(
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
                  'Sign Up',
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
                  title: 'Full Name',
                  hintText: 'Type your full name..',
                  iconForm: 'images/icon_name.png',
                  textEditingController: nameController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1200),
                delay: const Duration(milliseconds: 1800),
                child: CustomTextField(
                  title: 'Email',
                  hintText: 'Type your email address..',
                  iconForm: 'images/icon_email.png',
                  textEditingController: emailController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 1400),
                delay: const Duration(milliseconds: 2100),
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
                duration: const Duration(milliseconds: 1600),
                delay: const Duration(milliseconds: 2400),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: CustomButton(
                    title: 'Create New Account',
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
                duration: const Duration(milliseconds: 1800),
                delay: const Duration(milliseconds: 2700),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Account?',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        ' Sing In',
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
      ),
    );
  }
}
