import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
}
