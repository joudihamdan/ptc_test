import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/core/utils/assets_manager.dart';
import 'package:ptc_ui_quiz/screens/product_details_page.dart';

import '../core/utils/color_manager.dart';
import '../widgets/cart_action_widget.dart';

class CategoriesInfoPage extends StatefulWidget {
  const CategoriesInfoPage({super.key});

  @override
  State<CategoriesInfoPage> createState() => _CategoriesInfoPageState();
}

class _CategoriesInfoPageState extends State<CategoriesInfoPage>  with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Map<String, dynamic>> _items = [
    {
      'image': AssetsManager.item1,
      'name': 'Item 1',
      'price': '\$9.99',
    },
    {
      'image': AssetsManager.item2,
      'name': 'Item 2',
      'price': '\$14.99',
    },
    {
      'image': AssetsManager.item3,
      'name': 'Item 3',
      'price': '\$7.99',
    },
    {
      'image': AssetsManager.item1,
      'name': 'Item 4',
      'price': '\$19.99',
    },
    {
      'image': AssetsManager.item2,
      'name': 'Item 2',
      'price': '\$14.99',
    },
    {
      'image': AssetsManager.item3,
      'name': 'Item 3',
      'price': '\$7.99',
    },
  ];
@override
  void initState() {
  _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          dividerColor: Colors.transparent,
          labelColor: ColorManager.whiteColor,
          indicatorColor: Colors.transparent,
          controller: _tabController,
          tabs: [
            Tab(child: Container(
              width: 100,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorManager.secondaryColor
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Pobular"),
            ),),),
            Tab(child: Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorManager.secondaryColor
            ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Low Price"),
              ),),),
            Tab(child: Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorManager.secondaryColor
            ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("offers"),
              ),),),
          ],
        ),
        title: const Text("Fishes"),
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:const Icon(Icons.arrow_back_ios_sharp,size: 20,color: ColorManager.blackColor,),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.search,weight: 30),
          ),
          CartActionWidget(black: true,)
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 0.7,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ProductDetailsPage();
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(4.0)),
                      child: Image.asset(
                        _items[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _items[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.add,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
