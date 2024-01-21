import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:let_me_go/widgets/remaining_time.dart';
import 'package:let_me_go/widgets/two_side_rounded_button.dart';
import '../backend/isar_services.dart';
import '../constants.dart';
import '../screens/details_screen.dart';

class BookSectionCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final int id;
  const BookSectionCard({
    super.key,
    required this.id,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final isarController = Get.put(IsarController());

    return GestureDetector(
      onTap: () {
        isarController.getJsonPath("assets/novel_data/part_$id.json");
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChaptersPage(title: title)));
      },
      child: GetBuilder<IsarController>(
        builder: (_) => Container(
          padding: const EdgeInsets.only(top: 24, left: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(29),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 33,
                color: kShadowColor,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                maxLines: 2,
                text: TextSpan(
                  style: const TextStyle(color: kBlackColor),
                  children: [
                    TextSpan(
                      text: title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '\n$subTitle',
                      style: const TextStyle(
                        color: kLightBlackColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const RemainingTime(),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  color: kBlackColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: const Text(
                  'Read',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
