import 'package:flutter/material.dart';

class ChapterReadingPage extends StatelessWidget {
  const ChapterReadingPage(
      {super.key, required this.paragraphs, required this.chapterName});
  final List paragraphs;
  final String chapterName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapterName),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: ListView(
          children: [
            for (var para in paragraphs) Paragraph(text: para.text),
          ],
        ),
      ),
    );
  }
}

class Paragraph extends StatelessWidget {
  const Paragraph({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
