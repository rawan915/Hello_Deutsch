import 'package:flutter/material.dart';
import 'package:hello_deutsch/widgets/appBar_widget.dart';
import 'package:hello_deutsch/data/quiz_questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<QuizQuestion> questions;
  int currentQuestion = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    questions = generateQuiz(5); // 5 random questions
  }

  // for checking correct answer
  // selected -> is the answer choosen
  void checkAnswer(String selected) {
    // if selected answer is correct answer -> score ++
    if (selected == questions[currentQuestion].answer) {
      setState(() => score++);
    }
    // go to next question if it's not final question
    if (currentQuestion < questions.length - 1) {
      setState(() => currentQuestion++);
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Quiz Finished"),
          content: Text("Your score: $score / ${questions.length}"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  currentQuestion = 0;
                  score = 0;
                  questions = generateQuiz(5);
                });
              },
              child: Text("Restart"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var q = questions[currentQuestion];
    return Scaffold(
      appBar: AppBarWidget(title: "Quiz", showFlagAndHello: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Question ${currentQuestion + 1}/${questions.length}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // السؤال = صورة
            Expanded(child: Image.asset(q.questionImage, fit: BoxFit.contain)),
            SizedBox(height: 20),

            // الخيارات = كلمات ألماني
            ...q.options.map((opt) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: ElevatedButton(
                  onPressed: () => checkAnswer(opt),
                  child: Text(opt, style: TextStyle(fontSize: 20)),
                ),
              );
            }).toList(),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
