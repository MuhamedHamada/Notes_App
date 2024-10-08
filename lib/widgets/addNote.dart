import 'package:flutter/cupertino.dart';
import 'package:notesapp/widgets/AddNoteForm.dart';
import 'package:notesapp/widgets/CustomButton.dart';
import 'package:notesapp/widgets/CustomTextField.dart';
class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
