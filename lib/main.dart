import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/screens/onboaring.dart';
import 'package:ptc_ui_quiz/screens/product_details_page.dart';
import 'package:ptc_ui_quiz/widgets/custom_navigate_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:OnBoardingScreen(),
    );
  }
}


