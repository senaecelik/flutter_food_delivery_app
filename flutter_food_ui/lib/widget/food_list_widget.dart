import 'package:flutter/material.dart';
import 'package:flutter_food_ui/constant/router_constant.dart';
import '../constant/string.dart';
import 'food_card_widget.dart';

class FoodListWidget extends StatelessWidget {
  const FoodListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      FoodCardWidget(
        foodName: StringConstant.foodVeggie,
        price: StringConstant.foodprice1,
        foodImage: StringConstant.foodVeggieImage,
        page: RouteConstant.detailPageRoute,
      ),
      const SizedBox(
        width: 30,
      ),
      FoodCardWidget(
        foodName: StringConstant.foodSpicy,
        price: StringConstant.foodprice2,
        foodImage: StringConstant.foodSpicyImage,
        page: RouteConstant.detailPageRoute,
      )
    ]);
  }
}
