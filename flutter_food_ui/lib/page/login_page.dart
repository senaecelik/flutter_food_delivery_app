import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/color_constant.dart';
import 'package:flutter_food_ui/constant/edge_instent_constant.dart';
import 'package:flutter_food_ui/constant/radius_constant.dart';
import 'package:flutter_food_ui/constant/router_constant.dart';
import 'package:flutter_food_ui/constant/string.dart';
import 'package:flutter_food_ui/constant/text_style_constant.dart';
import '../widget/orange_button_component.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(children: const [
          _LoginTopContainer(),
          _BodyTabBarContainer(),
        ]),
      )),
    );
  }
}

class _BodyTabBarContainer extends StatelessWidget {
  const _BodyTabBarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsentsConstant.tabBarViewPadding,
      height: MediaQuery.of(context).size.height / 2,
      child: TabBarView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _EmailAdress(),
              const SizedBox(
                height: 10,
              ),
              const _Password(),
              const SizedBox(
                height: 10,
              ),
              const _ForgotPassword(),
              OrangeButtonWidget(
                text: StringConstant.login,
                page: RouteConstant.homeScreenRoute,
              )
            ],
          ),
          Column(
            children: [
              const _EmailAdress(),
              const _Password(),
              OrangeButtonWidget(
                  text: StringConstant.signUp,
                  page: RouteConstant.homeScreenRoute)
            ],
          )
        ],
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(StringConstant.forgotPassword,
          style: TextStyleConstant.text.copyWith(
              decoration: TextDecoration.underline,
              color: ColorConstant.tennesseeOrange)),
    );
  }
}

class _Password extends StatelessWidget {
  const _Password({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(StringConstant.password)),
    );
  }
}

class _EmailAdress extends StatelessWidget {
  const _EmailAdress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(StringConstant.emailAdress)),
    );
  }
}

class _LoginTopContainer extends StatelessWidget {
  const _LoginTopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsentsConstant.loginContainer,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: RadiusConstant.onlyBottomLeftRigt,
      ),
      child: Column(
        children: [
          Image(image: AssetImage(StringConstant.loginlogoImage)),
          const SizedBox(
            height: 50,
          ),
          TabBar(
              indicatorColor: ColorConstant.ogreOdor,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: StringConstant.login,
                ),
                Tab(
                  text: StringConstant.signUp,
                )
              ])
        ],
      ),
    );
  }
}
