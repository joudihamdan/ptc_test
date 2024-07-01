import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/widgets/items.dart';

class ItemsBuilder extends StatelessWidget {
  const ItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount:2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8 ),
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context,index){
            return Items();
          }),
        ),

    );
  }
}