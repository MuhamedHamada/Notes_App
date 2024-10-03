import 'package:flutter/cupertino.dart';
import 'package:notesapp/widgets/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
children: [
  Text("Notes",style: TextStyle(
    fontSize: 28
  ),),
  Spacer(),
  CustomSearch(),

],
    );
  }
}
