import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/cubits/AddNoteCubit.dart';
import 'package:notesapp/cubits/NotesCubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'CustomButton.dart';
import 'CustomTextField.dart';

class AddNoteForm extends StatefulWidget {
  @override
  _AddNoteFormState createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? title;
  String? subTitle;
  String? content;
  int color = Colors.blue.value;  // Default color value

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: 'Subtitle',
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: 'Content',
            onSaved: (value) {
              content = value;
            },
            maxLines: 5,
          ),
          SizedBox(height: 32),
          CustomButton(
            onTap: () {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var currentDate = DateTime.now();
                var formatCurrentDate= DateFormat.yMd().format(currentDate);
                var note = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date:formatCurrentDate,
                  color: color,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              }
            },
          ),
        ],
      ),
    );
  }
}
