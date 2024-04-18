import 'package:feedback/src/bloc/questions_bloc.dart';
import 'package:feedback/src/core/inject.dart';
import 'package:feedback/src/screens/home_screen.dart';
import 'package:feedback/src/screens/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String home = '/';
  static const String productorQuestions = '/productor-questions';
  static const String participantQuestions = '/participant-questions';

  static bool falsePredicate(Route<dynamic> route) => false;

  static String get initialRoute => home;

  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomeScreen(),
    productorQuestions: (context) => BlocProvider(
          create: (context) => QuestionBloc(
            questionType: QuestionType.productor,
            questionService: getIt(),
          ),
          child: const QuestionScreen(),
        ),
    participantQuestions: (context) => BlocProvider(
          create: (context) => QuestionBloc(
            questionType: QuestionType.participant,
            questionService: getIt(),
          ),
          child: const QuestionScreen(),
        ),
  };
}
