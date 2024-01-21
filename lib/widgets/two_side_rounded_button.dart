import 'package:flutter/material.dart';

import '../constants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radius;
  final Function press;
  const TwoSideRoundedButton({
    super.key,
    required this.text,
    this.radius = 29,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
