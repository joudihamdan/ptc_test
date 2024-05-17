import 'package:flutter/material.dart';
import 'package:test_app/models/category_model.dart';
import 'package:test_app/views/products_view.dart';

// ignore: must_be_immutable
class CategoriesContainer extends StatelessWidget {
  CategoriesContainer(
      {super.key, required this.categoryModel, required this.i});
  CategoryModel categoryModel;
  Function? onTap;
  int i;
  @override
  Widget build(BuildContext context) {
    Color color;
    if (i % 2 == 0) {
      color = const Color(0xff53B175).withOpacity(0.1);
    } else if (i % 2 != 0) {
      color = const Color(0xffF8A44C).withOpacity(0.1);
    } else
      // ignore: curly_braces_in_flow_control_structures
      color = Colors.transparent;
    return GestureDetector(
      onTap: () {
        if (categoryModel.categotytName == "Beverages") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ProductsView(
                  categoryName: categoryModel.categotytName,
                );
              },
            ),
          );
        }
      },
      child: Container(
        width: 178,
        height: 190,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: i%2==0 ? Color(0xff53B175) : Color(0xffF8A44C) ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(categoryModel.image),
            const SizedBox(
              height: 40,
            ),
            Text(
              categoryModel.categotytName,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
