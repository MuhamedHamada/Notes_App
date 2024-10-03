import 'package:flutter/material.dart';
import 'package:notesapp/screens/NotesScreen.dart';

void main() {
  runApp( NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:NotesScreen(),
    );

  }
}