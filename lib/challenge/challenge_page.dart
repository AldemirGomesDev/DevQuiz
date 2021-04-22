import 'package:DevQuiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: QuestionIndicatorWidget(),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: QuizWidget(title: 'Qual o framework mais usado?'),
      ),
    );
  }
}
