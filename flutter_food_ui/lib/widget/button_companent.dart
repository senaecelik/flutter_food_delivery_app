import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/color_constant.dart';
import 'package:flutter_food_ui/constant/edge_instent_constant.dart';

import '../constant/radius_constant.dart';

class ButtonWidget extends StatelessWidget {
  Widget page;
  ButtonWidget({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Center(
        child: Container(
          padding: EdgeInsentsConstant.buttonPadding,
          decoration: BoxDecoration(
              borderRadius: RadiusConstant.radius, color: ColorConstant.white),
          child: Text("Get Started"),
        ),
      ),
    );
  }
}
