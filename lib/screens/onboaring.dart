import 'package:flutter/material.dart';
import 'package:ptc_ui_quiz/core/utils/assets_manager.dart';
import 'package:ptc_ui_quiz/core/utils/color_manager.dart';
import 'package:ptc_ui_quiz/core/utils/style_maneger.dart';
import 'package:ptc_ui_quiz/main.dart';
import 'package:ptc_ui_quiz/widgets/custom_navigate_bar.dart';

import 'grocery_home.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Your holiday \nshopping \ndelivered to your\nhome",style: StyleManager.boldTextStyle(),),
                // Image.asset(AssetsManager.emojiImage,width: 33,height: 33,)
              ],
            ),
              const SizedBox(height: 20,),
              Text("There's something for everyone to\nenjoy with Sweet Shop\nFavourites",style: StyleManager.onboardingTextStyle(),),
            const SizedBox(height: 20,),
            Image.asset(AssetsManager.onboarding),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: currentPage == 0, width: currentPage == 0 ? 24 : 8),
                const SizedBox(width: 8),
                _buildDot(isActive: currentPage == 1, width: currentPage == 1 ? 24 : 8),
                const SizedBox(width: 8),
                _buildDot(isActive: currentPage == 2, width: currentPage == 2 ? 24 : 8),
              ],
            ),
            const Spacer(flex: 4,),
        Center(
          child: SizedBox(
            width: 250,
            child: FloatingActionButton(onPressed: () {
              if(currentPage==2){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomNavigateBar() ));
              }
                setState(() {
                  currentPage++;
                });
              },
             backgroundColor: ColorManager.whiteColor ,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                   Text("Get Started",style: StyleManager.buttonTextTextStyle(),),
                   const Icon(Icons.arrow_forward),

                 ],)
               ,),
          ),
        )
          ],
        ),
      ),
    );
  }
  Widget _buildDot({bool isActive = false, double width = 8}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: width,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: isActive ? ColorManager.secondaryColor : Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
