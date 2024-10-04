import 'package:flutter/material.dart';
import 'package:notesapp/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hintText,  this.maxLines=1});
final String hintText;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
border: OutlineInputBorder(
  borderSide: BorderSide(
    color:kPrimaryColor
  ),
  borderRadius: BorderRadius.circular(12)
),

      ),
    );
  }
}
