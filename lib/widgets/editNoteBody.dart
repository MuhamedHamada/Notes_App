import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/NotesCubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/CustomAppBar.dart';
import 'package:notesapp/widgets/CustomTextField.dart';

class EditNoteBody extends StatefulWidget {
   EditNoteBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
   String? title,content,subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: (){
              widget.note.title=title ?? widget.note.title;
              widget.note.subTitle=content ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();

            },
            icon: Icons.check,
            title: "Edit Note",
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value){
              title=value;
            },
              hintText: widget.note.title),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value){
              content=value;
            },
            hintText: widget.note.subTitle,
          maxLines: 5,),

        ],
      ),
    );
  }
}
