import 'package:flutter/cupertino.dart';

import '../core/utils/assets_manager.dart';
import '../core/utils/color_manager.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.index});
 final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 270,height:100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: (index%2==0)?ColorManager.secondaryColor :ColorManager.greyText ,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AssetsManager.item2),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get",style: TextStyle(fontSize: 20,color: ColorManager.whiteColor),),
                Text("50 % OFF",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: ColorManager.whiteColor),),
                Text("On first 3 orders",style: TextStyle(fontSize: 16,color: ColorManager.whiteColor),),

              ],
            )
          ],
        ),
      ),
    );
  }
}
