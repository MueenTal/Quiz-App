import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/providers/quizProvider.dart';

class Score extends StatelessWidget {
  const Score({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<QuizProvider>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "your score is ${prov.totalScore}",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 100,
              child: RaisedButton(
                elevation: 5.0,
                color: Colors.blue,
                onPressed: () {
                  prov.restart();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  "restart app",
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 1.5, fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
