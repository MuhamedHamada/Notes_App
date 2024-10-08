import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomButton.dart';
import 'CustomTextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
 final GlobalKey<FormState>formKey=GlobalKey();
 AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
 String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){
              title=value;
            },
            maxLines: 1,
            hintText: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value){
              subTitle=value;
            },
            maxLines: 5,
            hintText: "Content",
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }

            },
          ),
        ],
      ),
    );
  }
}
