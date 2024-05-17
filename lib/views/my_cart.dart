import 'package:flutter/material.dart';
import 'package:test_app/models/product_model.dart';
import 'package:test_app/views/confirm_order.dart';
import 'package:test_app/widgets/custom_botton.dart';
import 'package:test_app/widgets/custom_navigate_bar.dart';
import 'package:test_app/widgets/item_in_cart.dart';

class MyCartView extends StatelessWidget {
  MyCartView({super.key});

  List<ProductModel> cart = [
    ProductModel(
        image: "assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3 (1).png",
        productName: "Organic Bananas",
        quantity: 12,
        price: 2.25),
    ProductModel(
        image: "assets/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png",
        productName: "Bell Pepper Red",
        quantity: 1,
        price: 1.90),
    ProductModel(
        image: "assets/pngfuel 16.png",
        productName: "Egg Chicken Red",
        quantity: 4,
        price: 3.55),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "MyCart",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(children: [
        ListView.builder(
          itemBuilder: (context, index) {
            return ItemInCart(
              productModel: cart[index],
            );
          },
          itemCount: 3,
        ),
        Positioned(
            bottom: 15,
            left: 20,
            right: 20,
            child: CustomBotton(
              name: "Go to Checkout",
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
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Checkout ",
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        size: 30,
                                      ))
                                ],
                              ),
                            ),
                            Divider(),
                            const ListTile(
                              title: Text(
                                "Delivery",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              trailing: Text(
                                "Select Method >",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                            const ListTile(
                              title: Text(
                                "Pament",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              trailing: Text(
                                "🔻 >",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ),
                            const ListTile(
                              title: Text(
                                "Promo Code",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              trailing: Text(
                                "Pick discount >",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                            const ListTile(
                              title: Text(
                                "Total Cost",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                              trailing: Text(
                                "\$22.9 >",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                            CustomBotton(
                              name: "place Order",
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const ConfirmedOrderView();
                                }));
                              },
                            ),
                          ]),
                        ),
                      );
                    });
              },
            )),
        Positioned(
          bottom: 30,
          left: 310,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xff489E67),
                borderRadius: BorderRadius.circular(4)),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "\$12.3",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ]),
      bottomNavigationBar: CustomNavigateBar(),
    );
  }
}
