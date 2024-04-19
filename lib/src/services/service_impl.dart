import 'package:dartz/dartz.dart';
import 'package:feedback/src/core/exception.dart';
import 'package:feedback/src/services/service.dart';

class QuestionServiceImpl implements QuestionService {
  @override
  Future<Either<QuestionException, Map<String, dynamic>>> submitAnswers({
    required Map<int,String> answers,
  }) async {
    try{
      // TODO: call to api
      print(answers);
      return const Right({'message': 'Answers submitted successfully'});
    }  catch (e) {
      return Left(QuestionException('Erro ao submeter respostas.'));
    }
  }
}
