import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/providers/quizProvider.dart';
import 'package:quizapp/widgets/qustion.dart';
import 'package:quizapp/widgets/score.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<QuizProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: prov.index < prov.length ? Question() : Score(),
    );
  }
}
