import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMC Trading App',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final double price = 1.2345;

  @override
  Widget build(BuildContext context) {
    String signal = getSignal(price);

    return Scaffold(
      appBar: AppBar(
        title: Text('SMC Signal'),
      ),
      body: Center(
        child: Text(
          signal,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  String getSignal(double price) {
    double resistance = 1.2350;
    double support = 1.2300;

    if (price > resistance) {
      return "🚀 BUY SIGNAL";
    } else if (price < support) {
      return "🔥 SELL SIGNAL";
    } else {
      return "⏳ WAIT";
    }
  }
}
