import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:let_me_go/backend/isar_services.dart';
import 'package:let_me_go/widgets/chapter_reading_page.dart';
import '../constants.dart';

class ChaptersPage extends StatelessWidget {
  const ChaptersPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final isarController = Get.put(IsarController());

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: PopScope(
        canPop: true,
        onPopInvoked: (val) {},
        child: SingleChildScrollView(
          child: GetBuilder<IsarController>(
            builder: (_) => Column(
              children: <Widget>[
                for (var chapter in isarController.chapters)
                  ChapterCard(
                    title: chapter.title,
                    subTitle: chapter.paragraphs[0].text,
                    paragraphs: chapter.paragraphs,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String title;
  final String subTitle;

  final List paragraphs;
  const ChapterCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.paragraphs});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChapterReadingPage(
              chapterName: title,
              paragraphs: paragraphs,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        margin: const EdgeInsets.only(bottom: 14, left: 12, right: 12),
        //width: size.width - 48,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: title.characters.take(12).toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "\n $subTitle",
                      style: const TextStyle(color: kLightBlackColor),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Crushing &",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontSize: 28),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * .005),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 0),
                  child: Text(
                    "Influence",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: size.width * .3,
                          padding: EdgeInsets.only(top: size.height * .02),
                          child: const Text(
                            "When the earth was flat and every one wanted to win the game of the best and people and winning with an A game with all the things you have.",
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height * .015),
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Read",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 20,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        // BookRating(score: 4.9),
                      ],
                    )
                  ],
                )
              ],
            )),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.transparent,
              child: Image.asset(
                "assets/images/book-1.png",
                height: double.infinity,
                alignment: Alignment.topRight,
                fit: BoxFit.fitWidth,
              ),
            )),
      ],
    );
  }
}
