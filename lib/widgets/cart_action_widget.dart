import 'package:flutter/material.dart';
import '../core/utils/color_manager.dart';

class CartActionWidget extends StatelessWidget {
  const CartActionWidget({super.key,required this.black});
 final bool black;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(0.0),
      child: Stack(
        children: [
          Icon(
            Icons.shopping_bag_outlined,
            color:black ? Colors.black: Colors.white,
            size: 28,
          ),
          const Positioned(
            top: -4,
            left: 9,
            child: CircleAvatar(
              backgroundColor: ColorManager.secondaryColor,
              maxRadius: 10,
              child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
