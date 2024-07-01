import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/core/utils/style_maneger.dart';
import 'package:ptc_ui_quiz/widgets/categories_gridview_builder.dart';
import 'package:ptc_ui_quiz/widgets/custom_appbar.dart';
import 'package:ptc_ui_quiz/widgets/product_card_builder.dart';
import 'offers_card_builder.dart';

class GroceryHomeBuilder extends StatelessWidget {
  const GroceryHomeBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [

        const SliverToBoxAdapter(
          child: CustomAppbar(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const SliverToBoxAdapter(child: OffersCardBuilder()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Recommended",
              style: StyleManager.headerTextStyle(),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: ProductCardBuilder()),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Deals on Fruits & Tea",
              style: StyleManager.headerTextStyle(),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: ProductCardBuilder()),
        const SliverToBoxAdapter(child: CategoriesGridviewBuilder()),
      ],
    );
  }
}
