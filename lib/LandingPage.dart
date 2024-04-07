// LandingPage.dart
import 'package:flutter/material.dart';
import 'package:appquiz/HomeScreen.dart'; // Import HomeScreen page

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hides leading arrow icon
        title: Text(''),
        // backgrouns appbar
        backgroundColor: Colors.purple.shade900,
        // height appbar
        toolbarHeight: 15,
      ),
      body: Container(
        // padding content all
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            // background view
            image: AssetImage('assets/images/bg3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              // Size Logo
              height: 200,
              width: 200,
              // Logo image
              child: Image.asset('assets/images/Logo.png'),
            ),
            // jarak logo dengan filed name
            SizedBox(height: 70),
            Text(
              'Please enter your name',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              style: TextStyle(color: Colors.white, fontSize: 18), // Text color and size for TextField
              // CREATE INPUT NAME
              decoration: InputDecoration(
                // Label name
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.white),
                // BORDER TEXTFIELD
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  // BORDER LABEL
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 60),
            // TOMBOL ENTER TO HOMESCREEN
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // Tombol ke Home Screen
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              // style button
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  // SET RADIUS BUTTON
                  borderRadius: BorderRadius.circular(10),
                ),
                // background button
                primary: Colors.purple.shade900,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24)
              ),
              // TEXT TOMBOL ENTER
              child: Text(
                'Enter',
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 100), // JARAK BUTTON
          ],
        ),
      ),
    );
  }
}
