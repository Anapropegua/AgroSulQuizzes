import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:feedback/src/core/exception.dart';
import 'package:feedback/src/services/service.dart';
import 'package:feedback/src/core/access_api.dart';
import 'package:flutter/foundation.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:connectivity/connectivity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

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

    var isConnected = await Connectivity().checkConnectivity();

    if (isConnected == ConnectivityResult.mobile ||
        isConnected == ConnectivityResult.wifi) {

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
        return const Right({'message': 'Dados enviados com sucesso!'});
      } catch (e) {
        return Left(
          QuestionException(
            'Houve um erro ao enviar os dados. Verifique a conexão e tente novamente.',
          ),
        );
      }
    } else {

      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<Map<String, dynamic>> savedForms = prefs
              .getStringList('forms')
              ?.map((e) => jsonDecode(e))
              .cast<Map<String, dynamic>>()
              .toList() ??
          [];

      Map<String, String> stringKeyAnswers =
          answers.map((key, value) => MapEntry(key.toString(), value));
      Map<String, dynamic> form = {
        'type': formQuestion,
        'form': typeQuestion,
        'answers': stringKeyAnswers,
      };

      savedForms.add(form);
      List<String> stringForms = savedForms.map((e) => jsonEncode(e)).toList();

      prefs.setStringList('forms', stringForms);

      if (kDebugMode) {
        print(stringForms);
      }

      return const Right({'message': 'Dados salvos localmente!'});
    }
  }
}
