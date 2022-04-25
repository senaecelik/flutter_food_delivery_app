// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/color_constant.dart';
import 'package:flutter_food_ui/constant/edge_instent_constant.dart';
import 'package:flutter_food_ui/constant/router_constant.dart';
import 'package:flutter_food_ui/constant/string.dart';
import 'package:flutter_food_ui/constant/text_style_constant.dart';

import '../constant/radius_constant.dart';

class ButtonWidget extends StatelessWidget {

  ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(
              context, RouteConstant.loginScreenRoute);
        },
        child: Center(
          child: Container(
            padding: EdgeInsentsConstant.buttonPadding,
            decoration: BoxDecoration(
                borderRadius: RadiusConstant.radius,
                color: ColorConstant.white),
            child: Text(
              StringConstant.getStarted,
              style: TextStyleConstant.text.copyWith(
                color: ColorConstant.tennesseeOrange,
              ),
            ),
          ),
        ));
  }
}
