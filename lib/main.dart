import 'package:alerts_dialogues/alertdialogue1.dart';
import 'package:alerts_dialogues/bottomsheet.dart';
import 'package:alerts_dialogues/custom_alertbox.dart';
import 'package:alerts_dialogues/simpledialog.dart';
import 'package:alerts_dialogues/snackbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomsheetExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
