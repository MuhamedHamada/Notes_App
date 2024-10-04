import 'package:flutter/cupertino.dart';
import 'package:notesapp/widgets/CustomTextField.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            maxLines: 1,
            hintText: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            maxLines: 5,
            hintText: "Content",
          ),
        ],
      ),
    );
  }
}
