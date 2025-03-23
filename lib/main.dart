import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MotivatorApp());
}

class MotivatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motivator',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: QuoteScreen(),
    );
  }
}

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final List<String> quotes = [
    "Believe in yourself.",
    "You can do it.",
    "Stay focused.",
    "Dream big.",
    "Never give up."
  ];

  String currentQuote = "Tap the button to get inspired!";

  void getNewQuote() {
    setState(() {
      currentQuote = quotes[Random().nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Motivator")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            currentQuote,
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getNewQuote,
        child: Icon(Icons.refresh),
        tooltip: "New Quote",
      ),
    );
  }
}
