import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:let_me_go/widgets/remaining_time.dart';
import 'package:let_me_go/widgets/two_side_rounded_button.dart';
import '../constants.dart';

class LastOpenedCard extends StatelessWidget {
  const LastOpenedCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    //double size = 400;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * .06),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.labelLarge,
              children: const [
                TextSpan(
                    text: "Just where you left!",
                    style: TextStyle(fontSize: 18)),
                TextSpan(
                    text: "\nContinue reading....",
                    style: TextStyle(fontStyle: FontStyle.italic))
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          //margin: const EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 245,
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 24,
                    right: size.width * .35,
                  ),
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA).withOpacity(.45),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: const Text(
                          "Last opened on Jan 01, 2023",
                          style: TextStyle(
                            fontSize: 9,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                      Text(
                        "Let me go Mr. Hill",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const Text(
                        "Chapter 08",
                        style: TextStyle(color: kLightBlackColor),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10.0),
                        child: Row(
                          children: <Widget>[
                            // Padding(
                            //   padding: EdgeInsets.only(right: 10.0),
                            //   child: BookRating(score: 4.9),
                            // ),
                            Expanded(
                              child: Text(
                                "When the earth was flat and everyone wanted to win the game of the best and people….",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10,
                                  color: kLightBlackColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Image.asset(
                  "assets/images/book-3.png",
                  width: size.width * .37,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 40,
                  width: size.width * .3,
                  child: TwoSideRoundedButton(
                    text: "Continue",
                    radius: 24,
                    press: () {},
                  ),
                ),
              ),
              const Positioned(
                bottom: 10,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.watch_later,
                      color: kLightBlackColor,
                    ),
                    SizedBox(width: 10),
                    RemainingTime()
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
