import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/screens/NotesScreen.dart';
import 'package:notesapp/widgets/constants.dart';

void main()async {
  await Hive.initFlutter();
   await Hive.openBox(kNotesBox);
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