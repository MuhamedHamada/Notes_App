import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/widgets/constants.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.onTap,this.isLoading=false});
 final void Function()? onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(child: isLoading? CircularProgressIndicator():
        Text("Add",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}
