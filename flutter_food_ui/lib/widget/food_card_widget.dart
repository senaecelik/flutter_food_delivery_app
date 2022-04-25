// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../constant/color_constant.dart';
import '../constant/radius_constant.dart';
import '../constant/text_style_constant.dart';

class FoodCardWidget extends StatelessWidget {
  String foodName;
  String price;
  String foodImage;
  String page;
  FoodCardWidget(
      {Key? key,
      required this.foodName,
      required this.price,
      required this.foodImage, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, page);
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: ColorConstant.white,
                borderRadius: RadiusConstant.radius),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Text(foodName,
                      textAlign: TextAlign.center,
                      style: TextStyleConstant.largeText),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(price,
                    style: TextStyleConstant.text.copyWith(
                      color: ColorConstant.tennesseeOrange,
                    )),
              ],
            ),
          ),
          Image(image: AssetImage(foodImage))
        ],
      ),
    );
  }
}
