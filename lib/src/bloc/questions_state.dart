part of "questions_bloc.dart";

enum QuestionStatus { initial, loading, success, error }

enum QuestionType { productor, participant }

class QuestionState extends Equatable {
  final QuestionStatus status;
  final int currentQuestionIndex;
  final String currentAnswerText;
  final Map<int, String> answers;
  final QuestionType questionType;
  final String errorMessage;

  const QuestionState({
    this.status = QuestionStatus.initial,
    this.currentQuestionIndex = 1,
    this.currentAnswerText = "",
    required this.questionType,
    this.errorMessage = "",
    this.answers = const {},
  });

  QuestionState copyWith({
    QuestionStatus? status,
    int? currentQuestionIndex,
    Map<int, String>? answers,
    String? errorMessage,
    String? currentAnswerText,
  }) =>
      QuestionState(
        status: status ?? this.status,
        currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
        questionType: questionType,
        errorMessage: errorMessage ?? this.errorMessage,
        currentAnswerText: currentAnswerText ?? this.currentAnswerText,
        answers: answers ?? this.answers,
      );

  @override
  List<Object> get props => [
        status,
        currentQuestionIndex,
        questionType,
        answers,
        errorMessage,
        currentAnswerText,
      ];

  List<QuestionEntity> get questions => questionType == QuestionType.productor
      ? productorQuestions
      : participantQuestions;
  int get totalQuestions => questions.length;

  QuestionEntity get currentQuestion => questions.firstWhere(
        (question) => question.questionNumber == currentQuestionIndex,
      );

  String get currentAnswer => answers[currentQuestionIndex] == null
      ? ""
      : answers[currentQuestionIndex]!;

  bool get isLastQuestion => currentQuestionIndex == totalQuestions;
}
