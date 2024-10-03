import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24
            ,bottom: 24,
        left: 16
      ),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text("Flutter Tips",
            style: TextStyle(fontSize: 26,
              color: Colors.black
            ),),
            subtitle: Text("Build ypur career",
              style: TextStyle(fontSize: 20,
                  color: Colors.black.withOpacity(.3)
              ), ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete),
            iconSize: 30,
            color: Colors.black,)
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("May21,2022",
              style: TextStyle(
                  color: Colors.black.withOpacity(.3)
              ),),
          )
        ],
      ),
    );
  }
}
