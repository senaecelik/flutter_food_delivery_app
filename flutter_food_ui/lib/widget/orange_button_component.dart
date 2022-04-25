// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../constant/color_constant.dart';
import '../constant/radius_constant.dart';
import '../constant/text_style_constant.dart';

class OrangeButtonWidget extends StatelessWidget {
  String text;
  String page;
  OrangeButtonWidget({Key? key, required this.text, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, page);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 45),
        padding: const EdgeInsets.symmetric(horizontal: 134, vertical: 25),
        decoration: BoxDecoration(
            color: ColorConstant.ogreOdor, borderRadius: RadiusConstant.radius),
        child: Text(
          text,
          style: TextStyleConstant.text.copyWith(color: ColorConstant.white),
        ),
      ),
    );
  }
}
