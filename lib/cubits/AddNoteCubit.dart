import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/AddNoteState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/constants.dart';
class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());
  bool isLoading =false;
  addNote(NoteModel note) async{
    emit(AddNoteLoading());
try {
  var notesBox =Hive.box<NoteModel>(kNotesBox);
  emit(AddNoteSuccess());
    await notesBox.add(note);
}  catch (e) {
  AddNoteFailure(e.toString());
}
  }
}