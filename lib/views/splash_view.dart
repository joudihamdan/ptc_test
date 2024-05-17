import 'package:flutter/material.dart';
import 'package:test_app/core/colors.dart';
import 'package:test_app/views/get_started.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    print("object");
    setState(() {
      navigateToNextScreen();
    });

    print("object");

    super.initState();
  }

  void navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => GetStartedView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundAndBotton,
      body: Center(child: Image.asset("assets/Logo.png")),
    );
  }
}
