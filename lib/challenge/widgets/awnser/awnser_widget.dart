import 'package:DevQuiz/challenge/widgets/quiz/quiz_controller.dart';
import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';

class AwnserWidget extends StatefulWidget {
  final AwnserModel awnser;
  final bool isSelected;
  final VoidCallback onTap;

  const AwnserWidget({
    Key? key,
    required this.awnser,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  _AwnserWidgetState createState() => _AwnserWidgetState();
}

class _AwnserWidgetState extends State<AwnserWidget> {
  final quizController = QuizController();

  Color get _selectedColorRight =>
      widget.awnser.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      widget.awnser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      widget.awnser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      widget.awnser.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight => widget.awnser.isRight
      ? AppTextStyles.bodyDarkGreen
      : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight =>
      widget.awnser.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color:
                widget.isSelected ? _selectedColorCardRight : AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(
              BorderSide(
                  color: widget.isSelected
                      ? _selectedBorderCardRight
                      : AppColors.border),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.awnser.title,
                  style: widget.isSelected
                      ? _selectedTextStyleRight
                      : AppTextStyles.body,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      widget.isSelected ? _selectedColorRight : AppColors.white,
                  borderRadius: BorderRadius.circular(500),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: widget.isSelected
                          ? _selectedBorderRight
                          : AppColors.border,
                    ),
                  ),
                ),
                width: 24,
                height: 24,
                child: widget.isSelected
                    ? Icon(
                        Icons.check,
                        size: 16,
                        color: Colors.white,
                      )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
