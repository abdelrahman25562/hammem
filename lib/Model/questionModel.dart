enum QuestionType {
  Image,
  Text,
}

class QuestionModel {
  int id;
  String question;
  String answer;
  QuestionType questionType;

  QuestionModel({
    this.id,
    this.question,
    this.answer,
    this.questionType,
  });
}
