import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/screens/product_details_page.dart';
import '../core/utils/assets_manager.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/style_maneger.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>ProductDetailsPage()));
        },
        child: Container(
          width: 120,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset(AssetsManager.item3)),
                const Divider(
                  indent: 8,
                ),
                Text(
                  "Fresh Lemon",
                  style: StyleManager.normalTextStyle(),
                ),
                const Text(
                  "Organic",
                  style: TextStyle(
                      fontSize: 12,
                      color: ColorManager.greyText,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 100,
                  height: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorManager.whiteColor),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Unit",
                          style: TextStyle(),
                        ),
                        Text(
                          " \$12",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        CircleAvatar(
                          backgroundColor: ColorManager.primaryColor,
                          maxRadius: 12,
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 14,
                            color: ColorManager.whiteColor,
                          )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
