import 'package:flutter/material.dart';
import 'package:test_app/core/colors.dart';

// ignore: must_be_immutable
class CustomBotton extends StatelessWidget {
  CustomBotton({super.key, required this.name, this.onPressed});
  final String name;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          height: 67,
          width: 340,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColor.backgroundAndBotton),
          child: Center(
            child: Text(
              name,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ));
  }
}
