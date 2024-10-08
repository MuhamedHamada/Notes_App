import 'package:notesapp/cubits/AddNoteState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/models/note_model.dart';
class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit():super(AddNoteInitial());
  addNote(NoteModel note){

  }
}