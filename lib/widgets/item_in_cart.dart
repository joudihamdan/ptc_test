import 'package:flutter/material.dart';
import 'package:test_app/core/colors.dart';
import 'package:test_app/models/product_model.dart';

class ItemInCart extends StatelessWidget {
  ItemInCart({super.key, required this.productModel});
  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding:
              const EdgeInsets.only(bottom: 20, right: 20, top: 10, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(productModel.image),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productModel.productName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " ${productModel.quantity.toString()}kg, price",
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey, width: 0.2),
                        ),
                        child: const Icon(
                          Icons.minimize_outlined,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: Colors.grey, width: 0.2),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: AppColor.backgroundAndBotton,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "\$ ${productModel.price.toString()}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 23),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
