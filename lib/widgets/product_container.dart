import 'package:flutter/material.dart';
import 'package:test_app/core/colors.dart';
import 'package:test_app/models/product_model.dart';

// ignore: must_be_immutable
class ProductContainer extends StatelessWidget {
  ProductContainer({super.key, required this.productModel});
  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(child: Image.asset(productModel.image)),
            ),
            Text(
              productModel.productName,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "${productModel.quantity.toString()} ml",
              style: const TextStyle(color: Colors.grey),
            ),
            const Text(
              "price",
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productModel.price.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColor.backgroundAndBotton,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 25,
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showAddToCartBottomSheet(BuildContext context, ProductModel product) {
    final nameController = TextEditingController();
    final descriptionController = TextEditingController();

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Product Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText: 'Product Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add the product to the cart with the entered name and description
                  addProductToCart(
                      product, nameController.text, descriptionController.text);
                  Navigator.of(context).pop();
                },
                child: Text('Add to Cart'),
              ),
            ],
          ),
        );
      },
    );
  }
  

void addProductToCart(ProductModel product, String name, String description) {
  // Add the product to the cart with the entered name and description
  // ...
}
}

