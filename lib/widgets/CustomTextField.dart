import 'package:flutter/material.dart';
import 'package:notesapp/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hintText,  this.maxLines=1, this.onSaved});
final String hintText;
final int maxLines;
final void Function(String?)?onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value?.isEmpty ??true ){
          return"Field is Required";
        }else{
          return null;
        }
      },
      onSaved:onSaved ,
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
