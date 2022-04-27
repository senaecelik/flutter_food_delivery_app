// ignore_for_file: must_be_immutable

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/color_constant.dart';
import 'package:flutter_food_ui/constant/edge_instent_constant.dart';
import 'package:flutter_food_ui/constant/router_constant.dart';
import 'package:flutter_food_ui/constant/string.dart';
import 'package:flutter_food_ui/widget/orange_button_component.dart';
import '../constant/text_style_constant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsentsConstant.detailPagePadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const _DetailAppBar(),
                Image(image: AssetImage(StringConstant.foodVeggieImage)),
                const _CircleContainerRow(),
                const SizedBox(
                  height: 20,
                ),
                const FoodTextandDPrice(),
                const SizedBox(
                  height: 5,
                ),
                FoodDetailCard(
                  detailText: StringConstant.deliveryinfo,
                  detailTextDesc: StringConstant.deliverInfoDetail,
                ),
                const SizedBox(
                  height: 15,
                ),
                FoodDetailCard(
                    detailText: StringConstant.returnPolicy,
                    detailTextDesc: StringConstant.returnPolicyDetail),
                OrangeButtonWidget(
                    text: StringConstant.addToCard,
                    page: RouteConstant.addCardPageRoute)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FoodTextandDPrice extends StatelessWidget {
  const FoodTextandDPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          StringConstant.foodVeggiee,
          style: TextStyleConstant.bigText,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          StringConstant.foodprice1,
          style: TextStyleConstant.largeText
              .copyWith(color: ColorConstant.tennesseeOrange),
        ),
      ],
    );
  }
}

class _DetailAppBar extends StatelessWidget {
  const _DetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(EvaIcons.arrowBack)),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(EvaIcons.heartOutline)),
      ],
    );
  }
}

class _CircleContainerRow extends StatelessWidget {
  const _CircleContainerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GrayCircleContainer(
          color: ColorConstant.tennesseeOrange,
        ),
        GrayCircleContainer(
          color: ColorConstant.gray,
        ),
        GrayCircleContainer(
          color: ColorConstant.gray,
        ),
        GrayCircleContainer(
          color: ColorConstant.gray,
        ),
      ],
    );
  }
}

class FoodDetailCard extends StatelessWidget {
  String detailText;
  String detailTextDesc;
  FoodDetailCard(
      {Key? key, required this.detailText, required this.detailTextDesc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              detailText,
              style: TextStyleConstant.text,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              detailTextDesc,
              style: TextStyleConstant.text2,
            ),
          )
        ],
      ),
    );
  }
}

class GrayCircleContainer extends StatelessWidget {
  Color color;
  GrayCircleContainer({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ));
  }
}
