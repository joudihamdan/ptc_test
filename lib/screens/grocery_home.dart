
import 'package:flutter/material.dart';

import 'package:ptc_ui_quiz/widgets/grocery_home_builder.dart';

class GroceryHome extends StatelessWidget {
   GroceryHome({super.key});

int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return GroceryHomeBuilder();
  }
}
