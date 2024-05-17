import 'package:flutter/material.dart';
import 'package:test_app/views/home_view.dart';
import 'package:test_app/widgets/custom_botton.dart';

class ConfirmedOrderView extends StatelessWidget {
  const ConfirmedOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Center(child: Image.asset("assets/Group 6872.png")),
            const SizedBox(
              height: 50,
            ),
            const Text("Your Order has been \n           accepted",style: TextStyle(fontSize: 28 ,color: Colors.black)
            ,),
            const SizedBox(height: 20,),
            const Text("Your items has been placcd and is on \n       it’s way to being processed",style: TextStyle(
              fontSize: 16,color: Colors.grey
            ),),
            const SizedBox(height: 30,),
            CustomBotton(name: "Track Order"),
            TextButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                return const HomeView();
              }), (route) => false);
            }, child: const Text("Back To Home",style: TextStyle(
              color:  Colors.black
              ,fontSize: 18
            ),))
      
          ],),
        ),
      ),
    );
  }
}