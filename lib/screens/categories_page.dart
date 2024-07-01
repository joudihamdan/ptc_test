import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/core/utils/color_manager.dart';
import 'package:ptc_ui_quiz/widgets/items_builder.dart';

import '../models/category_model.dart';

class CategoriesPage extends StatelessWidget {
   CategoriesPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
                color: ColorManager.primaryColor,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(16))),
            child: const Padding(
              padding:
                  EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hey, Joudi",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22)),
                          Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Colors.white,
                                  size: 28,
                                ),
                                Positioned(
                                  top: -4,
                                  left: 9,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        ColorManager.secondaryColor,
                                    maxRadius: 10,
                                    child: Center(
                                        child: Text(
                                      "3",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Shop",
                      style: TextStyle(
                          fontSize: 35, color: ColorManager.whiteColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "By Category",
                      style: TextStyle(
                          fontSize: 50,
                          color: ColorManager.whiteColor,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
            ),
          ),
          ItemsBuilder()
        ],
      ),
    );
  }
}
