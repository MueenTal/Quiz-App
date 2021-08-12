import 'package:flutter/cupertino.dart';

class QuizProvider with ChangeNotifier {
  List quistions = [
    {
      'questionText': 'عدد سور القران الكريم',
      'answers': [
        {'Text': '100', 'score': 0},
        {'Text': '114', 'score': 10},
        {'Text': '120', 'score': 0},
        {'Text': '94', 'score': 0},
      ]
    },
    {
      'questionText': 'عدد صفحات القران ',
      'answers': [
        {'Text': '604', 'score': 10},
        {'Text': '614', 'score': 0},
        {'Text': '600', 'score': 0},
        {'Text': '608', 'score': 0},
      ]
    },
    {
      'questionText': 'اسم اول سورة بالقران',
      'answers': [
        {'Text': 'الفاتحة', 'score': 10},
        {'Text': 'العلق', 'score': 0},
        {'Text': 'الإخلاص', 'score': 0},
        {'Text': 'الفجر', 'score': 0},
      ]
    },
    {
      'questionText': 'عدد قارات العالم ',
      'answers': [
        {'Text': '6', 'score': 10},
        {'Text': '7', 'score': 10},
        {'Text': '8', 'score': 0},
        {'Text': '9', 'score': 0},
      ]
    },
    {
      'questionText': 'عدد الدول العربية ',
      'answers': [
        {'Text': '51', 'score': 0},
        {'Text': '17', 'score': 0},
        {'Text': '10', 'score': 0},
        {'Text': '22', 'score': 10},
      ]
    },
  ];

  int get length {
    return quistions.length;
  }

  int totalScore = 0;
  int index = 0;

  getScore(int score) {
    totalScore += score;
    notifyListeners();
  }

  incIndex() {
    index++;
    notifyListeners();
  }

  restart() {
    totalScore = 0;
    index = 0;
    notifyListeners();
  }
}
