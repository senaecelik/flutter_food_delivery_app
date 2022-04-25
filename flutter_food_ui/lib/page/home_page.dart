// ignore_for_file: camel_case_types

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/color_constant.dart';
import 'package:flutter_food_ui/constant/string.dart';
import 'package:flutter_food_ui/widget/title_widget.dart';
import '../constant/radius_constant.dart';
import '../constant/text_style_constant.dart';
import '../widget/food_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: SafeArea(
            child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const _homeAppBar(),
                      TitleWidget(titleName: StringConstant.homeText),
                      const _searchWidget(),
                      const _homeTabBar(),
                      const _homeTabView(),
                    ])),
          ),
          bottomNavigationBar: _bottomNavBar(),
        )));
  }

  BottomNavigationBar _bottomNavBar() {
    return BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(EvaIcons.heart), label: ""),
            BottomNavigationBarItem(icon: Icon(EvaIcons.person), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.backpack_sharp), label: ""),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ColorConstant.ogreOdor,
          unselectedItemColor: ColorConstant.gray,
          onTap: _onItemTapped,
        );
  }
}

class _homeTabView extends StatelessWidget {
  const _homeTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height / 2,
      child: const TabBarView(children: [
        FoodListWidget(),
        FoodListWidget(),
        FoodListWidget(),
        FoodListWidget(),
        FoodListWidget(),
      ]),
    );
  }
}

class _homeTabBar extends StatelessWidget {
  const _homeTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: TabBar(
          indicatorColor: ColorConstant.tennesseeOrange,
          labelColor: ColorConstant.tennesseeOrange,
          labelStyle: TextStyleConstant.text,
          unselectedLabelColor: ColorConstant.gray,
          isScrollable: true,
          tabs: const [
            Tab(
              text: "Foods",
            ),
            Tab(text: "Drinks"),
            Tab(text: "Snacks"),
            Tab(text: "Souces"),
            Tab(text: "Foods"),
          ]),
    );
  }
}

class _searchWidget extends StatelessWidget {
  const _searchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: RadiusConstant.radius,
            color: ColorConstant.brightGray),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                size: 32,
                color: Colors.black,
              ),
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 35, vertical: 21),
              hintText: "Search",
              hintStyle: TextStyleConstant.text),
        ));
  }
}

class _homeAppBar extends StatelessWidget {
  const _homeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(EvaIcons.menu2, color: Colors.black)),
        IconButton(
          onPressed: () {},
          icon: Icon(EvaIcons.shoppingBagOutline,
              color: Colors.black.withOpacity(0.3)),
        ),
      ],
    );
  }
}
