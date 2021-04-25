import 'package:flutter/material.dart';

class QuizController {
  final disabledNotifier = ValueNotifier<bool>(false);
  bool get disabled => disabledNotifier.value;
  set disabled(bool value) => disabledNotifier.value = value;
}
