import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(child: Text("Add",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),)),
    );
  }
}
