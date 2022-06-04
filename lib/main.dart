import 'package:etut_porgrami/widgets/Homepage.dart';
import 'package:etut_porgrami/widgets/calculation_page.dart';
import 'package:flutter/material.dart';
import 'package:etut_porgrami/widgets/Homepage.dart';
class Etutprogrami extends StatelessWidget {
  const Etutprogrami({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Etüt programi",
      initialRoute: "/Homepage",
      routes: {
        "/Homepage": (context) => Homepage(),
        "/CalculatePage": (context) => CalculatePage(),

      },
    );
  }


}


void main() {
  runApp(Etutprogrami());
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

