import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/color_constant.dart';
import 'package:flutter_food_ui/constant/edge_instent_constant.dart';
import 'package:flutter_food_ui/page/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/button_companent.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String titleText = "Food for\nEveryone";
    String logoImage = "assets/1.png";
    String splashImage = "assets/2.png";

    return Scaffold(
      backgroundColor: ColorConstant.ogreOdor,
      body: Padding(
        padding: EdgeInsentsConstant.horizontalVertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _logoWidget(logoImage: logoImage),
            _titleWidget(text: titleText),
            const SizedBox(
              height: 10,
            ),
            _splashImage(splashImage: splashImage),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(page: LoginPage())
          ],
        ),
      ),
    );
  }
}

class _splashImage extends StatelessWidget {
  const _splashImage({
    Key? key,
    required this.splashImage,
  }) : super(key: key);

  final String splashImage;

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(splashImage));
  }
}

class _logoWidget extends StatelessWidget {
  const _logoWidget({
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

class _titleWidget extends StatelessWidget {
  String text;
  _titleWidget({Key? key, required this.text}) : super(key: key);

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
