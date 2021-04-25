import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;

  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repositoty = HomeRepositoy();

  void getUser() async {
    state = HomeState.loading;
    user = await repositoty.getUser();
    await Future.delayed(Duration(seconds: 2));
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repositoty.getQuizzes();
    await Future.delayed(Duration(seconds: 2));
    state = HomeState.success;
  }
}
