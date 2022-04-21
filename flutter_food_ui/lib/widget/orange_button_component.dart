
import 'package:flutter/material.dart';

import '../constant/color_constant.dart';
import '../constant/radius_constant.dart';
import '../constant/text_style_constant.dart';

class OrangeButtonWidget extends StatelessWidget {
  String text;
  OrangeButtonWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 45),
      padding: const EdgeInsets.symmetric(horizontal: 134, vertical: 25),
      decoration: BoxDecoration(
          color: ColorConstant.ogreOdor, borderRadius: RadiusConstant.radius),
      child: Text(
        text,
        style: TextStyleConstant.text,
      ),
    );
  }
}
