import 'package:flutter/cupertino.dart';

import 'offer_card.dart';

class OffersCardBuilder extends StatelessWidget {
  const OffersCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index){
            return OfferCard(index: index);
          }),
    );
  }
}
