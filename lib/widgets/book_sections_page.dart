import 'package:flutter/cupertino.dart';
import 'book_section_card.dart';

class BookParts extends StatelessWidget {
  const BookParts({super.key});

  @override
  Widget build(BuildContext context) {
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
        children: const [
          BookSectionCard(
            id: 1,
            title: 'Part 01',
            subTitle: 'Chapter 800-849',
          ),
          BookSectionCard(
            id: 2,
            title: 'Part 02',
            subTitle: 'Chapter 850-899',
          ),
          BookSectionCard(
            id: 3,
            title: 'Part 03',
            subTitle: 'Chapter 900-949',
          ),
          BookSectionCard(
            id: 4,
            title: 'Part 04',
            subTitle: 'Chapter 950-999',
          ),
          BookSectionCard(
            id: 5,
            title: 'Part 05',
            subTitle: 'Chapter 1000-1049',
          ),
          BookSectionCard(
            id: 6,
            title: 'Part 06',
            subTitle: 'Chapter 1050-1090',
          ),
          // BookSectionCard(
          //   id: 7,
          //   title: 'Part 07',
          //   subTitle: 'Chapter 1000-1149',
          // ),
          // BookSectionCard(
          //   id: 8,
          //   title: 'Part 08',
          //   subTitle: 'Chapter 1150-1190',
          // ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
