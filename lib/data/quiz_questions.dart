import 'dart:math';
import 'package:hello_deutsch/data/animals_list.dart';
import 'package:hello_deutsch/data/colors_list.dart';
import 'package:hello_deutsch/data/family_members_list.dart';
import 'package:hello_deutsch/data/food_drinks_list.dart';
import 'package:hello_deutsch/data/numbers_list.dart';

class QuizQuestion {
  final String questionImage;
  final List<String> options;
  final String answer;

  QuizQuestion({
    required this.questionImage,
    required this.options,
    required this.answer,
  });
}

List<QuizQuestion> generateQuiz(int count) {
  final allItems = [
    // ... = يفرد عناصر القائمة ويحطها في القائمة الجديدة بدل ما يحط القائمة نفسها كعنصر واحد.
    ...animalsList,
    ...colorsList,
    ...familyMembersList,
    ...foodDrinksList,
    ...numbersList,
  ];

  final random = Random();
  final List<QuizQuestion> quizQuestions = [];

  for (int i = 0; i < count; i++) {
    //allItems.length = طول القائمة كلها.
    //random.nextInt(n) = رقم عشوائي من 0 لحد n-1.
    final item = allItems[random.nextInt(allItems.length)];

    // 3 random wrong options (German words)
    // بيعمل خلط بين الاجابات الغلط و بعدين يختار تلاته عشوائي
    final wrongOptions = (allItems..shuffle())
        .where((it) => it.germText != item.germText)
        .map((it) => it.germText)
        .take(3)
        .toList();

    // final options list -> 3 random wrong answers and one correct
    final options = [...wrongOptions, item.germText]..shuffle();

    quizQuestions.add(
      QuizQuestion(
        questionImage: item.image,
        options: options,
        answer: item.germText,
      ),
    );
  }
  return quizQuestions;
}
