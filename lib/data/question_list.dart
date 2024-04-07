// question_list.dart
import 'package:flutter/material.dart';

// CLASS QUESTION MODEL
class QuestionModel {
  // VARIABEL QUESTION
  final String? question;
  // VARIABEL IMAGE
  final String? imagePath;
  // VARIABEL ANSWERS
  final Map<String, bool>? answers;

  QuestionModel({
    this.question,
    this.imagePath,
    this.answers,
  });
}

// QUESTION & ANSWER QUIZ
final List<QuestionModel> questions = [
  QuestionModel(
    question: 'Bendera negara manakah ini?',
    imagePath: 'assets/images/ame.png',
    answers: {
      'Amerika Serikat': true,
      'Inggris Raya': false,
      'Kanada': false,
      'Australia': false,
    },
  ),
  QuestionModel(
    question: 'Negara manakah yang dimiliki oleh bendera ini?',
    imagePath: 'assets/images/jerman.jpg',
    answers: {
      'Prancis': false,
      'Italia': false,
      'Jerman': true,
      'Spanyol': false,
    },
  ),
  QuestionModel(
    question: 'Negara apa yang benderanya seperti ini?',
    imagePath: 'assets/images/jepang.png',
    answers: {
      'China': false,
      'Korea Selatan': false,
      'Vietnam': false,
      'Jepang': true,
    },
  ),
  QuestionModel(
    question: 'Bendera dari negara mana?',
    imagePath: 'assets/images/brazil.png',
    answers: {
      'Argentina': false,
      'Brasil': true,
      'Meksiko': false,
      'Peru': false,
    },
  ),
  QuestionModel(
    question: 'Bendera ini mewakili negara mana?',
    imagePath: 'assets/images/India.png',
    answers: {
      'Pakistan': false,
      'Bangladesh': false,
      'India': true,
      'Sri Lanka': false,
    },
  ),
  QuestionModel(
    question: 'Negara apa yang memiliki bendera ini?',
    imagePath: 'assets/images/Russia.png',
    answers: {
      'Rusia': true,
      'Kanada': false,
      'Norwegia': false,
      'Swedia': false,
    },
  ),
  QuestionModel(
    question: 'Negara manakah yang memiliki bendera seperti ini?',
    imagePath: 'assets/images/Africa.png',
    answers: {
      'Kenya': false,
      'Nigeria': false,
      'Mesir': false,
      'Afrika Selatan': true,
    },
  ),
  QuestionModel(
    question: 'Bendera dari negara mana?',
    imagePath: 'assets/images/Australia.png',
    answers: {
      'Australia': true,
      'Selandia Baru': false,
      'Fiji': false,
      'Papua Nugini': false,
    },
  ),
  QuestionModel(
    question: 'Bendera ini mewakili negara mana?',
    imagePath: 'assets/images/France.png',
    answers: {
      'Italia': false,
      'Prancis': true,
      'Spanyol': false,
      'Belgia': false,
    },
  ),
  QuestionModel(
    question: 'Negara apa yang memiliki bendera seperti ini?',
    imagePath: 'assets/images/Irlan.png',
    answers: {
      'Inggris Raya': false,
      'Irlandia': true,
      'Skotlandia': false,
      'Wales': false,
    },
  ),
];

