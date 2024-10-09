import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/AddNoteCubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/screens/NotesScreen.dart';
import 'package:notesapp/widgets/constants.dart';

void main()async {
  await Hive.initFlutter();
   await Hive.openBox(kNotesBox);
   Hive.registerAdapter(NoteModelAdapter());
  runApp( NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home:NotesScreen(),
      ),
    );

  }
}