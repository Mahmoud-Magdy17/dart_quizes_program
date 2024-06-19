import 'dart:io';

class Question {
  String question;
  double answer;

  Question({
    required this.question,
    required this.answer,
  });
}

double askQuestion(String q) {
  print("Q// $q ?");
  double? userAns = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  return userAns;
}

void main() {
  List<Question> questions = [
    Question(question: "3 * 8 = ", answer: 24.0),
    Question(question: "4 + 7 = ", answer: 11.0),
    Question(question: "12 / 2 = ", answer: 6.0),
  ];

  for (var question in questions) {
    double userAnser = askQuestion(question.question);
    print("Your anser is : $userAnser");
    (userAnser == question.answer)
        ? print("Correct!")
        : print("inCorrect! the correct anser is : ${question.answer}");
  }
}
