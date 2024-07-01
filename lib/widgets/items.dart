import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/core/utils/assets_manager.dart';
import 'package:ptc_ui_quiz/core/utils/color_manager.dart';
import 'package:ptc_ui_quiz/core/utils/style_maneger.dart';

import '../screens/categories_info_page.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoriesInfoPage()));
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: ColorManager.detailsColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(AssetsManager.image),
            const Spacer(),
            Text(
              "Fishes",
              style: StyleManager.subHeaderTextStyle(),
            ),
            Text(
              "From Sea",
              style: StyleManager.detailsTextStyle(),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
