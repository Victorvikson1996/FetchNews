import 'package:flutter/material.dart';
import 'package:news/views/dashboard.dart';
import 'package:news/views/onBoard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Virgin News",
    theme: ThemeData(),
    home: const DashboardPage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}
