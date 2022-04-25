// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constant/text_style_constant.dart';

class TitleWidget extends StatelessWidget {
  String titleName;
  TitleWidget({Key? key, required this.titleName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
      child: Text(
        titleName,
        style: TextStyleConstant.title1,
      ),
    );
  }
}
