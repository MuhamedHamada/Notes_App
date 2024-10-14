import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/AddNoteCubit.dart';
import 'package:notesapp/widgets/colorItem.dart';

class ColorsListView extends StatefulWidget {
   ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color>colors= [
    Color(0xffac3931),
    Color( 0xffF1E5D1),
    Color(0xff987070),
    Color(0xff8967B3),
    Color(0xffCB80AB),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(
          left: 4
          ),
          child: GestureDetector(
            onTap: (){
              currentIndex=index;
              BlocProvider.of<AddNoteCubit>(context).color=colors[index];
              setState(() {

              });
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex==index,
            ),
          ),
        );
      }),
    );
  }
}
