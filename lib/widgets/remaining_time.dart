import 'package:flutter/cupertino.dart';
import '../constants.dart';

class RemainingTime extends StatelessWidget {
  const RemainingTime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "READING TIME",
          style: TextStyle(
            fontSize: 9,
            color: kLightBlackColor,
          ),
        ),
        Text(
          "1 hours & 5 minutes",
          style: TextStyle(
            fontSize: 10,
            color: kLightBlackColor,
          ),
        ),
      ],
    );
  }
}
