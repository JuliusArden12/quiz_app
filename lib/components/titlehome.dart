import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
  TitleHome(
    this.startQuiz_call, {
    super.key,
  });

  VoidCallback startQuiz_call;

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/home_background.jpg"),
        SizedBox(
          height: 15,
        ),
        Text(
          'Try your knowledge skills',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w300, color: Colors.black54),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 14),
          child: OutlinedButton(
            onPressed: startQuiz_call,
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey, elevation: 5),
            child: Text("Start",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ),
        )
      ],
    );
  }
}
