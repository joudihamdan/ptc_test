import 'package:flutter/material.dart';
import 'package:test_app/core/colors.dart';
import 'package:test_app/models/product_model.dart';
import 'package:test_app/widgets/custom_botton.dart';
import 'package:test_app/widgets/product_container.dart';

// ignore: must_be_immutable
class ProductsView extends StatelessWidget {
  ProductsView({super.key, required this.categoryName});
  String categoryName;
  List<ProductModel> products = [
    ProductModel(
        image: "assets/pngfuel 12.png",
        productName: "Diet Coke",
        quantity: 355,
        price: 1.99),
    ProductModel(
        image: "assets/pngfuel 11.png",
        productName: "Sprite Can",
        quantity: 325,
        price: 1.50),
    ProductModel(
        image: "assets/pngfuel 11.png",
        productName: "Orenge Juice",
        quantity: 2,
        price: 8.99),
    ProductModel(
        image: "assets/pngfuel 13.png",
        productName: "Diet Coke",
        quantity: 355,
        price: 1.99),
    ProductModel(
        image: "assets/pngfuel.png",
        productName: "Sprite Can",
        quantity: 325,
        price: 1.50),
    ProductModel(
        image: "assets/pngfuel 14.png",
        productName: "Orenge Juice",
        quantity: 2,
        price: 8.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
          style: const TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: AppColor.backgroundAndBotton,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffF2F3F2),
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(30),
                                    right: Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Add ",
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Icon(
                                          Icons.close,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        label: Text(
                                          "Name",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 4),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.2,
                                                color: Color(0xffE2E2E2)))),
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        label: Text(
                                          "Description",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 4),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.2,
                                                color: Color(0xffE2E2E2)))),
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        label: Text(
                                          "Price",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 4),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.2,
                                                color: Color(0xffE2E2E2)))),
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        label: Text(
                                          "Image",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 4),
                                        suffixIcon: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 20,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 0.2,
                                                color: Color(0xffE2E2E2)))),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CustomBotton(name: "Add Item",onPressed: (){
                                      Navigator.pop(context);
                                  },)
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  icon: const Icon(
                    size: 15,
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.8),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductContainer(
              productModel: products[index],
            );
          },
        ),
      ),
    );
  }
}
