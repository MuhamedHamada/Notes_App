import 'package:flutter/material.dart';
import 'package:notesapp/widgets/NotesViewBody.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
    );
  }
}
