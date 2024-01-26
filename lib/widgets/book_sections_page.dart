import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../backend/isar_services.dart';
import 'book_section_card.dart';

class BookParts extends StatelessWidget {
  const BookParts({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IsarController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
            ),
            children: controller.bookParts
                .map(
                  (element) => BookSectionCard(
                    id: element.id,
                    title: element.title,
                    subTitle: element.subTitle,
                  ),
                )
                .toList()),
      );
    });
  }
}
