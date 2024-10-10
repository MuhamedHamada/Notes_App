import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../models/note_model.dart';
import '../widgets/constants.dart';
import 'NotesState.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();

  }
}
