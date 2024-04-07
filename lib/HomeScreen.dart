// HomeScreen.dart
import 'package:appquiz/main.dart';
import 'package:appquiz/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // BACKGROUND APPBAR
        backgroundColor: Colors.purple.shade900,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        // HEIGHT APPBAR
        toolbarHeight: 15,
      ),
      body: Container(
        // BACKGROUND HALAMAN
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
              // CONTAINER TOP CONTENT
              TopContent(),

              // CONTAINER BOX CONTENT TOP (CREATE, JOIN, ACHIVE)
              BoxContentTop(),

              // DEVELOPERS PROFILE
              DeveloperProfile(),

              // CONTAINER MID CONTENT (DAILY QUIZ)
              MidContent(),

              // BOTTOM CONTENT EXPLORE QUIZ
              BottomContent(),

              // BOTTOM CONTENT 2 EXPLORE QUIZ
              BottomContent2(),
            ],
          ),
        ),
      ),
    );
  }
}

// TOP CONTENT
class TopContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // MARGIN TOP CONTENT
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Row(
        children: [
          // IMAGE PROFILE
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Logo.png'),
            radius: 25,
          ),
          // Jarak horizontal antara CircleAvatar dan teks
          SizedBox(width: 15),
          Text(
            'Quizamania',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          // JARAK TEXT DGN XP
          SizedBox(width: 65),
          // CARD TOTAL XP
          Card(
            // color card
            color: Colors.purple.shade900,
            // margin content card
            margin: EdgeInsets.fromLTRB(20, 15, 10, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Atur radius border
            ),
            child: SizedBox(
              // Size content card xp
              width: 80,
              height: 40,
              child: Padding(
                // padding content
                padding: EdgeInsets.all(10),
                child: Text(
                  '1297 XP',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// CLASS BOX CONTENT TOP
class BoxContentTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          // CARD CREATE QUIZ
          Card(
            // MARGIN CARD
            margin: EdgeInsets.fromLTRB(25, 10, 0, 20),
            child: Container(
              decoration: BoxDecoration(
                // BoxDecoration for background
                color: Colors.deepPurple.shade300, // background color
                borderRadius: BorderRadius.circular(8), // Set border radius
              ),
              child: SizedBox(
                // size box content card
                width: 100,
                height: 140,
                child: Padding(
                  // padding boxcontent
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // SIZE ICON BOXCONTENT
                        width: 35,
                        height: 35,
                        // IMAGE ICON
                        child: Image.asset('assets/images/create.png', fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10),
                      Text('Create quiz', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // CARD 2 JOIN QUIZ
          Card(
            // MARGIN CARD
            margin: EdgeInsets.fromLTRB(20, 10, 0, 20),
            child: Container(
              decoration: BoxDecoration(
                // BoxDecoration for background
                color: Colors.teal.shade300, // background color
                borderRadius: BorderRadius.circular(8), // border radius
              ),
              child: SizedBox(
                // SIZE CONTENT JOIN CARD
                width: 100,
                height: 140,
                child: Padding(
                  // PADDING JOIN CARD
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // SIZE ICON
                        width: 35,
                        height: 35,
                        // ICON JOIN
                        child: Image.asset('assets/images/join.png', fit: BoxFit.cover),
                      ),
                      // JARAK ANTARA ICON & TEXT
                      SizedBox(height: 10),
                      Text('Join quiz', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // CARD 3 ACHIVEMENTS
          Card(
            // MARGIN CARD ACHIVE
            margin: EdgeInsets.fromLTRB(20, 10, 25, 20),
            child: Container(
              decoration: BoxDecoration(
                // BoxDecoration for background
                color: Colors.orange.shade400, // background color
                borderRadius: BorderRadius.circular(8), // Set border radius
              ),
              child: SizedBox(
                // SIZE CARD CONTENT ACHIVE
                width: 100,
                height: 140,
                child: Padding(
                  // PADDING ACHIVE CARD
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // SIZE ICON
                        width: 35,
                        height: 35,
                        // ICON ACHIVE
                        child: Image.asset('assets/images/achive.png', fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10),
                      Text('Achivements', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// DEVELOPERS PROFILE
class DeveloperProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      // MARGIN CARD
      margin: EdgeInsets.fromLTRB(25, 10, 25, 20),
      // BACKGROUND COLOR
      color: Colors.teal[400],
      child: SizedBox(
        // SIZE CONTENT
        width: 340,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // JARAK TEXT DGN KIRI CARD
            SizedBox(width: 30),
            Text(
              'Developer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(width: 150),
            // ICON BUTTON
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  // MENUJU HALAMAN PROFILE
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              // ICON
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// CLASS MID CONTENT (CARD QUIZ)
class MidContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            // MARGIN CONTENT
            margin: EdgeInsets.fromLTRB(25, 5, 25, 25),
            child: SizedBox(
              // SIZE CARD
              width: 340,
              height: 190,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple, // background color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                child: Padding(
                  //   JARAK CONTENT DGN CONTAINER
                  padding: EdgeInsets.fromLTRB(30, 5, 10, 10),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            // JARAK TEXT DGN CARD
                            SizedBox(height: 35),
                            Text(
                              'Daily Quiz',
                              style: TextStyle(fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Play quiz now!',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 5),
                            // BUTTON PLAY QUIZ
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  // MENUJU HALAMAN QUIZ
                                  MaterialPageRoute(builder: (context) => HomePage()),
                                );
                              },
                              // STYLE BUTTON
                              style: ElevatedButton.styleFrom(
                                // BACKGROUND COLOR
                                primary: Colors.purple.shade900,
                              ),
                              child: Text(
                                'Play Quiz',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      // CONTAINER IMAGE QUIZ
                      Container(
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            SizedBox(
                              // SIZE IMAGE QUIZ
                              width: 165,
                              height: 165,
                              // IMAGE QUIZ
                              child: Image.asset('assets/images/quizpng.png', fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class BottomContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          // CARD EASY QUIZ
          Card(
            // MARGIN CARD
            margin: EdgeInsets.fromLTRB(25, 15, 0, 15),
            child: Container(
              decoration: BoxDecoration(
                // BoxDecoration for background
                  color: Colors.deepPurple.shade400, // background color
                borderRadius: BorderRadius.circular(8), // Set border radius
              ),
              child: SizedBox(
                // size box content card
                width: 155,
                height: 50,
                child: Center(
                  // padding boxcontent
                  // padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      // TOMBOL EASY QUIZ
                      TextButton(
                        onPressed: () {
                          // Implementasi aksi ketika teks ditekan
                        },
                        child: Text(
                          'Easy',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // CARD 2 MEDIUM
          Card(
            // MARGIN CARD
            margin: EdgeInsets.fromLTRB(25, 10, 0, 15),
            child: Container(
              decoration: BoxDecoration(
                // BoxDecoration for background
                color: Colors.orange.shade400, // background color
                borderRadius: BorderRadius.circular(8), // Set border radius
              ),
              child: SizedBox(
                // size box content card
                width: 155,
                height: 50,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TOMBOL EASY QUIZ
                      TextButton(
                        onPressed: () {
                          // Implementasi aksi ketika teks ditekan
                        },
                        child: Text(
                          'Medium',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          // CARD CREATE QUIZ
          Card(
            // MARGIN CARD
            margin: EdgeInsets.fromLTRB(25, 0, 0, 20),
            child: Container(
              decoration: BoxDecoration(
                // BoxDecoration for background
                color: Colors.lightBlue.shade400, // background color
                borderRadius: BorderRadius.circular(8), // Set border radius
              ),
              child: SizedBox(
                // size box content card
                width: 155,
                height: 50,
                child: Center(
                  // padding boxcontent
                  // padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TOMBOL EASY QUIZ
                      TextButton(
                        onPressed: () {
                          // Implementasi aksi ketika teks ditekan
                        },
                        child: Text(
                          'Hard',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            // MARGIN CARD
            margin: EdgeInsets.fromLTRB(25, 0, 0, 20),
            child: Container(
              decoration: BoxDecoration(
                // BoxDecoration for background
                color: Colors.teal.shade400, // background color
                borderRadius: BorderRadius.circular(8), // Set border radius
              ),
              child: SizedBox(
                // size box content card
                width: 155,
                height: 50,
                child: Center(
                  // padding boxcontent
                  // padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TOMBOL EASY QUIZ
                      TextButton(
                        onPressed: () {
                          // Implementasi aksi ketika teks ditekan
                        },
                        child: Text(
                          'Very Hard',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

