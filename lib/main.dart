import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:myntra_clone/feature/landing_page/landing_page.dart';
import 'package:myntra_clone/foundation/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.mulishTextTheme(
          TextTheme(
              headline6: TextStyle(
                fontSize: 14.5,
                letterSpacing: 0.15,
                color: AppColor.heading6,
              ),
              bodyText1: TextStyle(color: AppColor.bodyColor1, fontSize: 14),
              caption: TextStyle(color: AppColor.captionColor, fontSize: 11)),
        ),
      ),
      home: LandingPage(),
    );
  }
}
