import 'package:dartz/dartz.dart';
import 'package:feedback/src/core/exception.dart';
import 'package:feedback/src/services/service.dart';
import 'package:feedback/src/core/access_api.dart';
import 'package:hasura_connect/hasura_connect.dart';

final HasuraConnect hasuraConnect = HasuraConnect(
  url,
  headers: {'x-hasura-admin-secret': key},
);

class QuestionServiceImpl implements QuestionService {
  @override
  Future<Either<QuestionException, Map<String, dynamic>>> submitAnswers({
    required Map<int, String> answers,
    required String typeQuestion,
    required String formQuestion,
  }) async {
    try {
      Map<String, String> stringKeyAnswers =
          answers.map((key, value) => MapEntry(key.toString(), value));

      String operationsDoc = """
        mutation answer(\$type: String = "$formQuestion", \$form: String = "$typeQuestion", \$answers: json = "$stringKeyAnswers") {
          insert_answer(objects: {type: \$type, form: \$form, answers: \$answers}) {
            affected_rows
          }
        }
      """;

      await hasuraConnect.mutation(operationsDoc);
      return const Right({'message': 'Answers submitted successfully'});
    } catch (e) {
      return Left(QuestionException('Erro ao submeter respostas.'));
    }
  }
}
