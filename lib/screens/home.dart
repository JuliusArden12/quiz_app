import 'package:flutter/material.dart';
import 'package:quiz_app/components/questions.dart';
import 'package:quiz_app/components/titlehome.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool toStart = false;

  void startQuiz() {
    setState(() {
      toStart = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade300,
      body: toStart ? Questions() : TitleHome(startQuiz),
    );
  }
}
