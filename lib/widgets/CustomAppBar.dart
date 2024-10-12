import 'package:flutter/cupertino.dart';
import 'package:notesapp/widgets/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
final String title;
final IconData icon;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
children: [
  Text(title,style: TextStyle(
    fontSize: 28
  ),),
  Spacer(),
  CustomSearch(
    onPressed: onPressed,
    icon: icon,
  ),

],
    );
  }
}
