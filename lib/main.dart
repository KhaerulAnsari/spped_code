import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_code/destination/destination_page.dart';
import 'package:speed_code/moviePage/pages/movie_page.dart'; // FOR MOVIE PAGE
import 'package:speed_code/signInsignUp/splash_page.dart'; // FOR SIGNIN SIGNUP VALIDATION

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DestinationPage(),
    );
  }
}
