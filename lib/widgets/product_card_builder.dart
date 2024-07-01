import 'package:flutter/cupertino.dart';
import 'package:ptc_ui_quiz/widgets/product_card.dart';

class ProductCardBuilder extends StatelessWidget {
  const ProductCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 180,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return const ProductCard();
          }),
    );
  }
}
