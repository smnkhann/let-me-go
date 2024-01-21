import 'package:isar/isar.dart';
part 'book_model_class.g.dart';

@collection
class Chapter {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  @Index(type: IndexType.value)
  String? title;
  String? subTitle;
  double? readingTime;
  bool? isRead;
  List<Paragraph>? paragraphs;

  Chapter(
      {required this.title,
      required this.subTitle,
      required this.readingTime,
      required this.isRead,
      this.paragraphs});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
        title: json['title'],
        subTitle: json['sub_title'],
        readingTime: json['reading_time'],
        paragraphs: (json['content'] as List<dynamic>?)
            ?.map((item) => Paragraph.fromJson(item))
            .toList(),
        isRead: false);
  }
}

@embedded
class Paragraph {
  String? text;
  Paragraph({this.text});
  factory Paragraph.fromJson(Map<String, dynamic> json) {
    return Paragraph(text: json['paragraph']);
  }
}
