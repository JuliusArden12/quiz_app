import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_list.dart';

class Questions extends StatefulWidget {
  Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final question_list = Questions_List;
  final answer = Answer_List;
  bool isFinished = false;
  int questionIndex = 0;
  int score = 0;

  void checkAnswer(bool answer) {
    print(answer);
    //check if the answer is to be given a points
    score += answer == Answer_List[questionIndex] ? 1 : 0;
    setState(() {
      if (questionIndex < question_list.length - 1) {
        questionIndex++;
      } else {
        //show the scores
        isFinished = true;
      }
    });
  }

  Widget showQuestion() {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(
        question_list[questionIndex],
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: ElevatedButton(
                  onPressed: () => checkAnswer(true), child: Text('TRUE'))),
          SizedBox(
            width: 8,
          ),
          Expanded(
              child: ElevatedButton(
                  onPressed: () => checkAnswer(false), child: Text('FALSE'))),
        ],
      ),
    ]);
  }

  Widget showScore() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You got'),
          SizedBox(
            height: 18,
          ),
          Text(
            '$score/${question_list.length}',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: isFinished ? showScore() : showQuestion(),
      ),
    );
  }
}
