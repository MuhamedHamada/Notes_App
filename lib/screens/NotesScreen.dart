import 'package:flutter/material.dart';
import 'package:notesapp/widgets/NotesViewBody.dart';
import 'package:notesapp/widgets/addNote.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return AddNote();
        });
      },child:
        Icon(Icons.add),),
      body: NotesViewBody(),

    );
  }
}
