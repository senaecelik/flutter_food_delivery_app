import 'package:flutter/material.dart';

class RadiusConstant {
  static BorderRadius radius = BorderRadius.circular(30);

  static BorderRadius onlyBottomLeftRigt = BorderRadius.only(
      bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30));
}
