import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:let_me_go/backend/helper_classes.dart';
import 'package:let_me_go/isar_db/book_model_class.dart';

class IsarController extends GetxController {
  // IsarController() {
  //   loadJsonFromFile();
  // }
  RxList bookParts = <dynamic>[].obs;
  RxList chapters = <dynamic>[].obs;
  List<ParagraphHelper> paragraphs = [];

  void getJsonPath(String newJsonPath) {
    String jsonPath = newJsonPath;
    //then load the data by calling load json method
    loadJsonFromFile(jsonPath);
  }

  loadJsonFromFile(String path) async {
    chapters.clear();
    final jsonString = await rootBundle.loadString(path);
    if (jsonString.isNotEmpty) {
      final List<dynamic> jsonList = json.decode(jsonString);

      for (var item in jsonList) {
        final chapter = Chapter.fromJson(item);
        chapters.add(chapter);
      }
    }
    update();
  }

  getBookParts() {
    //clear the sections first
    bookParts.clear();
    GetStorage box = GetStorage();
    int chapterCount = 800;
    for (int i = 1; i <= 25; i++) {
      String part = 'Part $i';
      var status = box.read(part);

      if (status != true) {
        bookParts.add(SubjectHelper(
            id: i,
            title: 'Part $i',
            subTitle: 'Chapter $chapterCount-${chapterCount + 49}'));
      }
      chapterCount += 50;
    }
    update();
  }
}
