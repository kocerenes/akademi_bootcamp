import 'package:etut_porgrami/widgets/calculation_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Etüt Uygulaması",
      theme: ThemeData(
        primaryColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: CalculatePage(),
    );
  }
}

