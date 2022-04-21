import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/color_constant.dart';
import 'package:flutter_food_ui/constant/edge_instent_constant.dart';
import 'package:flutter_food_ui/constant/radius_constant.dart';
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
           _loginTopContainer(),
           _bodyTabBarContainer(),
        ]),
      )),
    );
  }
}

class _bodyTabBarContainer extends StatelessWidget {
  const _bodyTabBarContainer({
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
              const _emailAdress(),
              const SizedBox(
                height: 10,
              ),
              const _password(),
              const SizedBox(
                height: 10,
              ),
              const _forgotPassword(),
              OrangeButtonWidget(
                text: StringConstant.login,
              )
            ],
          ),
          Column(
            children: [
              const _emailAdress(),
              const _password(),
              OrangeButtonWidget(text: StringConstant.signUp)
            ],
          )
        ],
      ),
    );
  }
}

class _forgotPassword extends StatelessWidget {
  const _forgotPassword({
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

class _password extends StatelessWidget {
  const _password({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(StringConstant.password)),
    );
  }
}

class _emailAdress extends StatelessWidget {
  const _emailAdress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(StringConstant.emailAdress)),
    );
  }
}

class _loginTopContainer extends StatelessWidget {
  const _loginTopContainer({
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
