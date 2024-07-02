import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/assets_manager.dart';

class ProductCardShape2 extends StatelessWidget {
   ProductCardShape2({super.key,required this.index});
   int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              items[index]['image'],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items[index]['name'],
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
    );
  }
}

final List<Map<String, dynamic>> items = [
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