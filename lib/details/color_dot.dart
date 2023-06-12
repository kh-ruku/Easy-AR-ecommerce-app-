import 'package:flutter/material.dart';

import '../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.fillColor,
    required this.isSelect,
  }) : super(key: key);

  final Color fillColor;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2.5,
      ),
      padding: const EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelect ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}