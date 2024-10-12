import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/AddNoteCubit.dart';  // تأكد من تضمين AddNoteCubit
import '../cubits/NotesCubit.dart';
import '../widgets/NotesViewBody.dart';
import '../widgets/addNote.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return BlocProvider(
                create: (context) => AddNoteCubit(), // توفير AddNoteCubit
                child: AddNoteBottomSheet(),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: NotesViewBody(),
    );
  }
}
