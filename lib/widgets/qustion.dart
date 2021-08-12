import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/providers/quizProvider.dart';

class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<QuizProvider>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              prov.quistions[prov.index]["questionText"].toString(),
              style: TextStyle(fontSize: 20),
              maxLines: 2,
            ),
          ),
          button(0, prov.quistions[prov.index]["answers"][0]["score"], context),
          button(1, prov.quistions[prov.index]["answers"][1]["score"], context),
          button(2, prov.quistions[prov.index]["answers"][2]["score"], context),
          button(3, prov.quistions[prov.index]["answers"][3]["score"], context)
        ],
      ),
    );
  }
}

Widget button(int answer, int score, context) {
  final prov = Provider.of<QuizProvider>(context);

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 100,
      child: RaisedButton(
        elevation: 5.0,
        color: Colors.blue,
        onPressed: () {
          prov.getScore(score);
          prov.incIndex();
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
          prov.quistions[prov.index]["answers"][answer]["Text"],
          style:
              TextStyle(color: Colors.white, letterSpacing: 1.5, fontSize: 15),
        ),
      ),
    ),
  );
}
