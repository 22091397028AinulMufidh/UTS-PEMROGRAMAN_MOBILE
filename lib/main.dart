// main.dart
import 'package:appquiz/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:appquiz/data/question_list.dart';
import 'package:appquiz/screen/result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}


// CLASS HOMEPAGE
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // VARIABEL FOR QUIZ
  int currentIndex = 0;
  int score = 0;
  String? selectedAnswer;
  bool answerSubmitted = false;

  // FUNCTION LOGIKA SCORE
  void answerQuestion(bool isCorrect) {
    if (!answerSubmitted) {
      setState(() {
        answerSubmitted = true;
      });
      // LOGIKA SCORE
      if (isCorrect) {
        setState(() {
          // JIKA BENAR DAPAT 10 SCORE
          score += 10;
          selectedAnswer = 'correct';
        });
      } else {
        setState(() {
          // JIKA SALAH 0 SCORE/ TIDAK ADA PENGURANGAN
          selectedAnswer = 'incorrect';
        });
      }

      if (currentIndex < questions.length - 1) {
        // SET DELAY DURATION
        Future.delayed(Duration(seconds: 1), () {
          setState(() {
            currentIndex++;
            // RESET QUESTION
            selectedAnswer = null;
            answerSubmitted = false;
          });
        });
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            // ROUTE TO RESULT SCREEN & VIEW SCORE
            builder: (context) => ResultScreen(score: score),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // BACKGROUND APPBAR
        backgroundColor: Colors.purple.shade900,
        // COLOR TEXT APPBAR
        foregroundColor: Colors.white,
        // MENGHAPUS BACK ICON
        automaticallyImplyLeading: false,
        // SET HEIGHT APPBAR
        toolbarHeight: 20,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            // BACKGROUND SCREEN
            image: AssetImage("assets/images/bg3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          // PADDING FOR CONTENT
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Jumlah question
              Text(
                // URUTAN SOAL QUIZ ANTARA 1/10
                'Question ${currentIndex + 1}/${questions.length}',
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white
                ),
              ),
              // JARAK DENGAN URUTAN QUIZ
              const SizedBox(height: 90),
              Text(
                // QUESTION QUIZ
                questions[currentIndex].question!,
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // IMAGE FOR QUESTION
              Image.asset(
                questions[currentIndex].imagePath!,
                // SIZE IMAGE
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              // JARAK DENGAN IMAGE QUESTION
              const SizedBox(height: 90),
              Column(
                // LOGIKA WARNA BUTTON SALAH DAN BENAR
                children: questions[currentIndex].answers!.entries.map((entry) {
                  Color? buttonColor;
                  if (answerSubmitted) {
                    if (entry.value) {
                      // TOMBOL HIJAU JIKA JAWABAN YANG DIPILIH BENAR
                      buttonColor = selectedAnswer == 'correct' ? Colors.green : Colors.deepPurple[700];
                    } else {
                      // TOMBOL MERAH JIKA MEMILIH JAWABAN SALAH
                      buttonColor = selectedAnswer == 'incorrect' ? Colors.red : Colors.deepPurple[700];
                    }
                  } else {
                    buttonColor = Colors.deepPurple[700];
                  }
                  // TOMBOL JAWABAN
                  return Container(
                    width: double.infinity,
                    // set margin
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: ElevatedButton(
                      onPressed: () => answerQuestion(entry.value),
                      style: ElevatedButton.styleFrom(
                        primary: buttonColor,
                        shape: RoundedRectangleBorder(
                          // SET RADIUS BUTTON
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        entry.key,
                        // COLOR TEXT JAWABAN
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

