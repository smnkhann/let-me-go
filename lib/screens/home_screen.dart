import 'package:flutter/material.dart';
import 'package:let_me_go/widgets/book_sections_page.dart';
import 'package:let_me_go/widgets/last_opened_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //LastOpenedCard(),

                  //SizedBox(height: 10),
                  BookParts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
