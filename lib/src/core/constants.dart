import 'package:feedback/src/models/entities/question_entity.dart';

// -------------------------------------------------------------
const List<QuestionEntity> participantQuestions = [
  QuestionEntity(
    questionNumber: 1,
    question: 'Como você avaliaria sua experiência geral no evento?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 2,
    question: 'Como você avaliaria o credenciamento do evento?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 3,
    question: 'Como você avaliaria o site do evento?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 4,
    question: 'Como você avaliaria a campanha de divulgação do evento?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 5,
    question: 'Como você avaliaria os minicursos?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 6,
    question: 'Como você avaliaria as oficinas?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 7,
    question: 'Como você avaliaria as mesas redondas?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 8,
    question: 'Como você avaliaria as palestras?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 9,
    question: 'Como você avaliaria os seminários temáticos?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 10,
    question: 'Como você avaliaria a feira exposição dos pequenos produtores?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 11,
    question: 'Como você avaliaria a praça de alimentação?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 12,
    question: 'Como você avaliaria as atrações culturais?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 13,
    question: 'Como você avaliaria a sinalização?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 14,
    question: 'Como você avaliaria os palestrantes?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 15,
    question: 'Como você avaliaria o funcionamento das dependências (banheiros, bebedouros, salas, etc)?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 16,
    question: 'Como você avaliaria a organização geral do evento?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 17,
    question: 'Como você avaliaria o atendimento da saúde?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 18,
    question: 'Você adquiriu algum produto na feira?',
    alternatives: ["Sim", "Não"],
  ),
  QuestionEntity(
    questionNumber: 19,
    question: 'O que mais gostou no evento?',
  ),
  QuestionEntity(
    questionNumber: 20,
    question: 'Qual foi a atividade mais interessante para você?',
  ),
  QuestionEntity(
    questionNumber: 21,
    question: 'Como você avaliaria a diversidade de atividades oferecidas?',
  ),
  QuestionEntity(
    questionNumber: 22,
    question: 'Algum aspecto específico da organização que você destacaria?',
  ),
  QuestionEntity(
    questionNumber: 23,
    question: 'Há algo que poderia ser melhorado no evento?',
  ),
  QuestionEntity(
    questionNumber: 24,
    question: 'Você tem sugestões para tornar a próxima edição ainda mais atraente?',
  ),
  QuestionEntity(
    questionNumber: 25,
    question: 'Você viria novamente para o evento no próximo ano?',
    alternatives: ["Sim", "Não", "Talvez"],
  ),
  QuestionEntity(
    questionNumber: 26,
    question: 'O que te atraiu a participar do evento?',
  ),
];

const List<QuestionEntity> participantOpenEndedQuestions = [];

// -------------------------------------------------------------
const List<QuestionEntity> farmerQuestions = [
  QuestionEntity(
    questionNumber: 1,
    question: 'Como você avaliaria sua experiência com vendas durante o evento?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 2,
    question: 'Como você avaliaria sua experiência com o espaço fornecido para exposição ?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 3,
    question: 'Houve um interesse significativo pelos seus produtos?',
    alternatives: [
      "Sim",
      "Não",
    ],
  ),
  QuestionEntity(
    questionNumber: 4,
    question: 'O evento proporcionou oportunidades de trocas de experiências benéficas para você?',
    alternatives: [
      "Sim",
      "Não",
    ],
  ),
  QuestionEntity(
    questionNumber: 5,
    question: 'Você fez novos contatos comerciais durante a feira?',
    alternatives: [
      "Sim",
      "Não",
    ],
  ),
  QuestionEntity(
    questionNumber: 6,
    question: 'Como você avalia a logística do evento em relação aos produtores?',
    alternatives: [
      "Extremamente negativa",
      "Negativa",
      "Neutra",
      "Positiva",
      "Extremamente positiva"
    ],
  ),
  QuestionEntity(
    questionNumber: 7,
    question: 'Algum problema logístico afetou sua participação?',
    alternatives: ["Sim", "Não"],
  ),
  QuestionEntity(
    questionNumber: 8,
    question: 'Que tipo de apoio adicional você gostaria de ver em futuras edições?',
  ),
  QuestionEntity(
    questionNumber: 9,
    question: 'Alguma sugestão específica para melhorar a participação dos produtores?',
  ),
  QuestionEntity(
    questionNumber: 10,
    question: 'Você viria novamente para o evento no próximo ano?',
    alternatives: ["Sim", "Não", "Talvez"],
  ),
];

const List<QuestionEntity> farmerOpenEndedQuestions = [];
