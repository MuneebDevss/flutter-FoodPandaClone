
import 'package:flutter/material.dart';

import 'feature/Home/Presentation/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(226,27,112,1)
        ),
        useMaterial3: true,
      ),
      home:  const HomePage(),
    );
  }
}
