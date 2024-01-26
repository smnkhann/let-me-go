class ChapterHelper {
  String title;
  String subTitle;
  String readingTime;
  List paragraphs;
  ChapterHelper(
      {required this.title,
      required this.subTitle,
      required this.readingTime,
      required this.paragraphs});

  factory ChapterHelper.fromJson(Map<String, dynamic> json) {
    return ChapterHelper(
        title: json['title'],
        subTitle: json['sub_title'],
        readingTime: json['reading_time'],
        paragraphs: json['content']);
  }
}

class ParagraphHelper {
  String text;
  ParagraphHelper({required this.text});
  factory ParagraphHelper.fromJson(Map<String, dynamic> json) {
    return ParagraphHelper(text: json['content']);
  }
}

class SubjectHelper {
  int id;
  String title;
  String subTitle;

  SubjectHelper(
      {required this.id, required this.title, required this.subTitle});
}
