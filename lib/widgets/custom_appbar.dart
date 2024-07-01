import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_manager.dart';
import 'cart_action_widget.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  String? selectedOption = 'Green Way 3000, Sylhet';
  String? selectedOption2 = '1 Hour';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      decoration: const BoxDecoration(
          color: ColorManager.primaryColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hey, Joudi",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                CartActionWidget(black: false,),
              ]
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: ColorManager.searchbar,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                hintText: "Search Products or store",
                hintStyle: const TextStyle(color: ColorManager.greyText),
                prefixIcon: const Icon(
                  Icons.search,
                  color: ColorManager.whiteColor,
                ),
              ),
              cursorColor: ColorManager.whiteColor,
              style: const TextStyle(color: ColorManager.whiteColor),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery to",
                  style: TextStyle(color: ColorManager.greyText),
                ),
                Text(
                  "Within",
                  style: TextStyle(color: ColorManager.greyText),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: selectedOption,
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: ColorManager.whiteColor,
                  ),
                  style: const TextStyle(color: ColorManager.whiteColor),
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption = newValue;
                    });
                  },
                  dropdownColor: ColorManager.lightGery,
                  items: <String>[
                    'Green Way 3000, Sylhet',
                    'Option 2',
                    'Option 3'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                DropdownButton<String>(
                  value: selectedOption2,
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: ColorManager.whiteColor,
                  ),
                  style: const TextStyle(color: ColorManager.whiteColor),
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption2 = newValue;
                    });
                  },
                  dropdownColor: ColorManager.lightGery,
                  items: <String>['1 Hour', '2 Hour', 'Option 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
