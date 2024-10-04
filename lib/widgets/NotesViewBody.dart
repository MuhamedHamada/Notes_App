import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/widgets/CustomAppBar.dart';
import 'package:notesapp/widgets/ListNoteItem.dart';
import 'package:notesapp/widgets/NoteItem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
        Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
