import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ptc_ui_quiz/core/utils/assets_manager.dart';
import 'package:ptc_ui_quiz/core/utils/color_manager.dart';
import 'package:ptc_ui_quiz/core/utils/style_maneger.dart';

import '../widgets/cart_action_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:const Text("orange"),
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:const Icon(Icons.arrow_back_ios_sharp,size: 20,color: ColorManager.blackColor,),),
        actions: const [
          CartActionWidget(black: true,)
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children:[ SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Image.asset(AssetsManager.item1)),
              ),
              const SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                    color: ColorManager.greyContainer.withOpacity(0.8),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Thin Choise Top\n Orange",style: StyleManager.headerTextStyle()),
                      const SizedBox(height: 30,),
                      Row(

                        children: [
                          Expanded(child: const Text("\$34.70/KG",style: TextStyle(color: ColorManager.primaryColor,fontSize: 16,fontWeight: FontWeight.w600),)),
                          const SizedBox(width: 20,),
                          Container(
                            width: 70,height: 20,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                                color: ColorManager.primaryColor),
                            child: const Center(child: Text("   \$22.04 OFF",style: TextStyle(color: Colors.white60),)),
                          ),
                          const SizedBox(width: 50,),
                          Text("Reg: \$56.70 USD",style: StyleManager.detailsTextStyle(),textAlign: TextAlign.center,)
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              glow: false,
                              ignoreGestures: true,
                              unratedColor: ColorManager.greyText,
                              itemSize: 18,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.only(left: 2),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: ColorManager.secondaryColor,
                              ),
                              onRatingUpdate: (rating) {}),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              "110 Reviews",
                              style: StyleManager.headerTextStyle(
                                  color: ColorManager.greyText),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 50,),

                      Text("Details",style: StyleManager.subHeaderTextStyle(),),
                      Text("Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",style: StyleManager.detailsTextStyle(),maxLines: 3,),
                      const ExpansionTile(
                        tilePadding: EdgeInsets.symmetric(horizontal: 0),
                         dense: false,
                        initiallyExpanded: false,
                        title: Text(
                         "Nutritional facts"),
                        children: [
                          ListTile(
                            title: Text('Tile 1'),
                          ),
                          ListTile(
                            title: Text('Tile 2'),
                          ),
                        ],
                      ),
                      const ExpansionTile(
                        tilePadding: EdgeInsets.symmetric(horizontal: 0),
                        dense: false,
                        initiallyExpanded: false,
                        title: Text(
                            "Reviews"),
                        children: [
                          ListTile(
                            title: Text('Tile 1'),
                          ),
                          ListTile(
                            title: Text('Tile 2'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50,),

            ],
          ),
        ),
    Positioned(
    bottom: 0,
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        ElevatedButton(
        onPressed: () {
        // Add to cart button pressed
        },
        style: ElevatedButton.styleFrom(
             // backgroundColor: Colors.transparent,
        side: const BorderSide(color: ColorManager.primaryColor),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        ),
        ),
        child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Text(
        'Add to Cart',
        style: TextStyle(color:  ColorManager.primaryColor),
        ),
        ),
        ),
        const SizedBox(width: 16.0),
        ElevatedButton(
        onPressed: () {
        // Buy Now button pressed
        },
        style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primaryColor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        ),
        ),
        child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Text(
        'Buy Now',
        style: TextStyle(color: Colors.white),
        ),
        ),
        ),
        ],
        ),
      ),
    ),

      ),
    ]
    ),
    );
  }
}
