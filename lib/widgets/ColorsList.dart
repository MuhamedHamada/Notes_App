import 'package:flutter/cupertino.dart';
import 'package:notesapp/widgets/colorItem.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return ColorItem();
      }),
    );
  }
}
