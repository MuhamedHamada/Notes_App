import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/SimpleBlocObserver.dart';
import 'package:notesapp/cubits/AddNoteCubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/screens/NotesScreen.dart';
import 'package:notesapp/widgets/constants.dart';

void main()async {
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
   await Hive.openBox<NoteModel>(kNotesBox);
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