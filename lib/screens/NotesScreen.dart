import 'package:flutter/material.dart';
import 'package:notesapp/widgets/NotesViewBody.dart';
import 'package:notesapp/widgets/addNote.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          isScrollControlled: true,
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
            context: context, builder: (context){
          return AddNoteBottomSheet();
        });
      },child:
        Icon(Icons.add),),
      body: NotesViewBody(),

    );
  }
}
