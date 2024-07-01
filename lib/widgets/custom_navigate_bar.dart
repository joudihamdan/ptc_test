import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/core/utils/color_manager.dart';
import '../screens/categories_page.dart';
import '../screens/favourite.dart';
import '../screens/grocery_home.dart';
import '../screens/more_page.dart';

class CustomNavigateBar extends StatefulWidget {
  const CustomNavigateBar({super.key});

  @override
  State<CustomNavigateBar> createState() => _CustomNavigateBarState();
}

class _CustomNavigateBarState extends State<CustomNavigateBar> {
  final _pages = [
    GroceryHome(),
     CategoriesPage(),
    const FavouritePage(),
    const MorePage(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
buttonBackgroundColor: ColorManager.blackColor,
        index: _currentIndex,
       // height: 75,
        backgroundColor: ColorManager.whiteColor,
        color: ColorManager.greyText.withOpacity(0.1),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
         _currentIndex == 0 ?
         const Padding(
           padding: EdgeInsets.all(8.0),
           child: Icon(
             Icons.home,
             color: ColorManager.secondaryColor,
           ),
         )
         : const Column(
            children: [
                   Center(
                      child: Icon(
                        Icons.home_outlined,
                      ),
                   ),
                     Text("home")
            ],
          ),
    _currentIndex == 1 ?
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        Icons.category,
        color: ColorManager.secondaryColor,
      ),
    ):
          const Column(
            children: [
              Center(
                    child:Icon(Icons.category_outlined),),
              Text( "categories")
            ],
          ),
          _currentIndex == 2 ?
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
                Icons.favorite ,color: ColorManager.secondaryColor,),
          ):
          const Column(
            children: [
           Icon( Icons.favorite_outline) ,
              Text("favourite")
            ],
          ),
          _currentIndex == 3 ?
          const Icon(
              Icons.more_horiz ,color: ColorManager.secondaryColor,):
          const Column(
            children: [
              Icon(
                 Icons.more_horiz_outlined),
              Text( "more"),
            ],
          )
        ],
      ),
    );
  }
}
