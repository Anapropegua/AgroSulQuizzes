import 'package:feedback/src/routes/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      onGenerateRoute: browserRouter,
      initialRoute: routes['Home']!,
      debugShowCheckedModeBanner: false,
    );
  }
}