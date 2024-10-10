import 'package:flutter/cupertino.dart';
import '../models/note_model.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoaded extends NotesState {
  final List<NoteModel> notes;

  NotesLoaded(this.notes);
}
