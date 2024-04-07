// profile.dart
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
      home: Profile(),
    );
  }
}

// CLASS PROFILE
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        ),
        // Button icon
        leading: IconButton(
          // ICON
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // BACK KE HALAMAN HOME
            Navigator.pop(context);
          },
        ),
        // BACKGROUND APPBAR
        backgroundColor: Colors.purple.shade900,
        // Warna text dan icon
        foregroundColor: Colors.white,
        // mengatur height appbar
        toolbarHeight: 60,
      ),
      body: Container(
        // BACKGROUND HALAMAN
        decoration: BoxDecoration(
          image: DecorationImage(
            // IMAGE BACKGROUND
            image: AssetImage('assets/images/bg3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // JARAK DENGAN APPBAR
              SizedBox(height: 10),
              Text('Developers Profile', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              ),
              // JARAK DENGAN CARD PROFILE
              SizedBox(height: 15),

              // CLASS CARD PROFILE
              CardProfile(),
            ],
          ),
        ),
      ),
    );
  }
}


// CLASS CARD PROFILE
class CardProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Container(
      child: Column(
        children: [
          // CARD 1
          Card(
            // MARGIN CARD CONTENT
            margin: EdgeInsets.fromLTRB(25, 5, 25, 15),
            child: SizedBox(
              // SIZE CONTENT CARD
              width: 340,
              height: 180,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple, // background color card
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                child: Padding(
                  //   JARAK CONTENT ISI DGN CONTAINER
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        // PHOTO PROFILE
                        backgroundImage: AssetImage('assets/images/reza.jpeg'),
                        // SIZE RADIUS
                        radius: 55,
                      ),
                      SizedBox(width: 20),
                      Container(
                        child: Column(
                          children: [
                            // JARAK TEXT DENGAN CONTENT CARD
                            SizedBox(height: 45),
                            Text(
                              'R.BG.Moch.Faishal Reza',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '22091397006',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              'Kediri, Jawa Timur',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // CARD PROFILE 2
          Card(
            // MARGIN CONTENT CARD PROFILE
            margin: EdgeInsets.fromLTRB(25, 5, 25, 15),
            child: SizedBox(
              // SIZE CARD PROFILE
              width: 340,
              height: 180,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple, // background color
                  borderRadius: BorderRadius.circular(10), // Set border radius
                ),
                child: Padding(
                  //   JARAK CONTENT ISI DGN CONTAINER
                  padding: EdgeInsets.fromLTRB(20, 5, 10, 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        // PHOTO PROFILE
                        backgroundImage: AssetImage('assets/images/ainul.jpg'),
                        // SIZE RADIUS
                        radius: 55,
                      ),
                      // JARAK HORIZONTAL TEXT KE PFOFIL
                      SizedBox(width: 35),
                      Container(
                        child: Column(
                          children: [
                            // JARAK TEXT DENGAN CONTENT CARD
                            SizedBox(height: 45),
                            Text(
                              'Ainul Mufidh',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '22091397028',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              'Sidoarjo, Jawa Timur',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                      // JARAK HORIZONTAL ANTARA FOTO & TEXT
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // CARD PROFILE 3
          Card(
            // MARGIN CARD PROFILE
            margin: EdgeInsets.fromLTRB(25, 5, 25, 15),
            child: SizedBox(
              // SIZE CARD PROFILE
              width: 340,
              height: 180,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple, // background color
                  borderRadius: BorderRadius.circular(10), //  border radius
                ),
                child: Padding(
                  //   JARAK CONTENT ISI DGN CONTAINER
                  padding: EdgeInsets.fromLTRB(20, 5, 10, 10),
                  child: Row(
                    children: [
                      // FOTO PROFILE
                      CircleAvatar(
                        // PHOTO PROFILE
                        backgroundImage: AssetImage('assets/images/yosan.png'),
                        // SIZE RADIUS
                        radius: 55,
                      ),
                      SizedBox(width: 20),
                      // CONTAINER COLUMN FOR TEXT
                      Container(
                        child: Column(
                          children: [
                            // JARAK TEXT DENGAN CARD CONTENT
                            SizedBox(height: 45),
                            Text(
                              'Farrel Yosan Navyansyah',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '22091397032',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white),
                            ),
                            Text(
                              'Bojonegoro, Jawa Timur',
                              style: TextStyle(fontSize: 14,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                      // JARAK HORIZONTAL ANATARA PHOTO & TEXT
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

