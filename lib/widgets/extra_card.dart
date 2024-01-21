import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ExtraCard extends StatelessWidget {
  const ExtraCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // RichText(
          //   text: TextSpan(
          //     style: Theme.of(context).textTheme.labelLarge,
          //     children: const [
          //       TextSpan(text: "Best of the "),
          //       TextSpan(
          //         text: "day",
          //         style: TextStyle(fontWeight: FontWeight.bold),
          //       ),
          //     ],
          //   ),
          // ),
          //bestOfTheDayCard(size, context),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(text: "Continue "),
                TextSpan(
                  text: "reading...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(38.5),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 33,
                  color: const Color(0xFFD3D3D3).withOpacity(.84),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(38.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 20),
                      child: Row(
                        children: <Widget>[
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Crushing & Influence",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Gary Venchuk",
                                  style: TextStyle(
                                    color: kLightBlackColor,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "Chapter 7 of 10",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: kLightBlackColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/images/book-1.png",
                            width: 55,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 7,
                    //width: size.width * .65,
                    decoration: BoxDecoration(
                      color: kProgressIndicator,
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
