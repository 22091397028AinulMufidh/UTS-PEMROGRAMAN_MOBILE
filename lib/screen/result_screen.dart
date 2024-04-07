// result_screen.dart
import 'package:appquiz/HomeScreen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  // VARIABEL SCORE
  final int score;
  // LOGIKA UNTUK MENAMPILKAN KALIMAT SESUAI SCORE
  String _getScoreMessage(score) {
    if (score == 100) {
      return 'Great Score!';
    } else if (score >= 75) {
      return 'Good Score';
    } else if (score < 75) {
      return 'Bad Score';
    } else {
      return 'Keep Trying!';
    }
  }


  const ResultScreen({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result', style: TextStyle(
            color: Colors.white,
            fontSize: 18
        )),
        // BACKGROUND APPBAR
        backgroundColor: Colors.purple.shade900,
        // COLOR TEXT APPBAR
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            // BACKGROUND IMAGE
            image: AssetImage('assets/images/bg3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SHOW SCORE
              Text(
                _getScoreMessage(score),
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // JARAK DENGAN KALIMAT
              SizedBox(height: 30),
              Image.asset(
                // IMAGE FOR SCORE
                'assets/images/score.png',
                height: 200,
                width: 200,
              ),
              // JARAK DENGAN IMAGE SCORE
              SizedBox(height: 40),
              Text(
                'Your Score',
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              // SCORE
              Text(
                '$score',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade400,
                ),
              ),
              const SizedBox(height: 50),
              // BUTTON PLAY AGAIN
              ButtonTheme(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      // KEMBALI KE HOME SCREEN
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  // COLOR BUTTON
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade900,
                  ),
                  // TEXT PLAY AGAIN
                  child: const Text(
                    'Back to home',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
