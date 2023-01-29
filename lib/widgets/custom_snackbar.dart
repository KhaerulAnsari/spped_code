import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_code/theme/theme.dart';

snackbar(String message) {
  return Get.snackbar(
    "",
    "",
    backgroundColor: const Color(
      0xFFD9435E,
    ),
    icon: Icon(
      Icons.close,
      color: whiteColor,
    ),
    titleText: Text(
      'Error!',
      style: whiteTextStyle.copyWith(
        fontWeight: medium,
        fontSize: 16,
      ),
    ),
    messageText: Text(
      message,
      style: whiteTextStyle,
    ),
  );
}
