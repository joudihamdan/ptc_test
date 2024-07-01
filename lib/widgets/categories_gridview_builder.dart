import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/core/utils/color_manager.dart';
import 'package:ptc_ui_quiz/widgets/product_card.dart';

class CategoriesGridviewBuilder extends StatelessWidget {
  const CategoriesGridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 300,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
        //  physics: NeverScrollableScrollPhysics(),
          itemCount: 12,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return const ProductCard();
          },
        ),
      
      
    );
  }
}