import 'package:flutter/material.dart';
import 'package:test_app/models/category_model.dart';
import 'package:test_app/widgets/custom_navigate_bar.dart';
import 'package:test_app/widgets/categories_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<CategoryModel> caregory = [
    CategoryModel(
        image: "assets/pngfuel 9.png",
        categotytName: "Frash Fruits '\n' & Vegetable"),
    CategoryModel(image: "assets/pngfuel 6.png", categotytName: " Meat & Fish"),
    CategoryModel(
        image: "assets/pngfuel 6 (1).png", categotytName: "Beverages"),
    CategoryModel(
        image: "assets/pngfuel.png",
        categotytName: "Frash Fruits '\n' & Vegetable"),
    CategoryModel(image: "assets/pngfuel 8.png", categotytName: " Meat & Fish"),
    CategoryModel(
        image: "assets/pngfuel 6 (1).png", categotytName: "Beverages"),
  ];
  bool isPreased = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Find Products",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar:  CustomNavigateBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16.0,
          ),
          itemCount: caregory.length,
          itemBuilder: (context, index) {
            return CategoriesContainer(
              categoryModel: caregory[index],
              i: index,
            );
          },
        ),
      ),
    );
  }
}
