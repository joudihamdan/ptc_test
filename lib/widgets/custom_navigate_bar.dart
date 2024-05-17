import 'package:flutter/material.dart';
import 'package:test_app/core/colors.dart';
import 'package:test_app/views/home_view.dart';
import 'package:test_app/views/my_cart.dart';

class CustomNavigateBar extends StatefulWidget {
  CustomNavigateBar({super.key});

  @override
  State<CustomNavigateBar> createState() => _CustomNavigateBarState();
}

class _CustomNavigateBarState extends State<CustomNavigateBar> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        
        });
          index == 2 ?
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyCartView();
            })):
              Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeView();
            }));
      },
      iconSize: 35,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      selectedItemColor: AppColor.backgroundAndBotton,
      unselectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
        color: AppColor.backgroundAndBotton,
        fontWeight: FontWeight.bold,
      ),
      showUnselectedLabels: true,
      items:  [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.store_mall_directory_outlined,
            ),
            label: "shope"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: "Explore"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: currentIndex ==2 ? AppColor.backgroundAndBotton : Colors.black,
            ),
            label: "Cart"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border_outlined,
          ),
          label: "Favourite",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "Profile"),
      ],
    );
  }
}
