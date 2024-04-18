import 'package:dartz/dartz.dart';
import 'package:feedback/src/core/exception.dart';

abstract class QuestionService {
  Future<Either<QuestionException, Map<String, dynamic>>> submitAnswers({
    required Map<int, String> answers,
  });
}
