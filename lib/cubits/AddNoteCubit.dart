import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/cubits/AddNoteState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/constants.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
Color? color= const Color(0xffac3931);
  bool isLoading = false;

  addNote(NoteModel note) async {
    note.color=color!.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
