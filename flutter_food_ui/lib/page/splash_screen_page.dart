// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/color_constant.dart';
import 'package:flutter_food_ui/constant/edge_instent_constant.dart';
import 'package:flutter_food_ui/constant/string.dart';

import 'package:google_fonts/google_fonts.dart';
import '../widget/button_companent.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.ogreOdor,
      body: Padding(
        padding: EdgeInsentsConstant.horizontalVertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _LogoWidget(logoImage: StringConstant.logoImage),
            _TitleWidget(text: StringConstant.titleText),
            const SizedBox(
              height: 10,
            ),
            _SplashImage(splashImage: StringConstant.splashImage),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget()
          ],
        ),
      ),
    );
  }
}

class _SplashImage extends StatelessWidget {
  const _SplashImage({
    Key? key,
    required this.splashImage,
  }) : super(key: key);

  final String splashImage;

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(splashImage));
  }
}

class _LogoWidget extends StatelessWidget {
  const _LogoWidget({
    Key? key,
    required this.logoImage,
  }) : super(key: key);

  final String logoImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsentsConstant.horizontalVerticalSmall,
      margin: EdgeInsentsConstant.onlyBottomMargin,
      decoration: BoxDecoration(
        color: ColorConstant.white,
        shape: BoxShape.circle,
      ),
      child: Image(
        image: AssetImage(logoImage),
        fit: BoxFit.contain,
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  String text;
  _TitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.varelaRound(
          fontSize: 65,
          fontWeight: FontWeight.bold,
          color: ColorConstant.white),
    );
  }
}
