import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/screens/editNote.dart';

class NoteItem extends StatelessWidget {
   NoteItem({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNote();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 24
              ,bottom: 24,
          left: 16
        ),
        decoration: BoxDecoration(
          color:Color(note.color) ,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,
              style: TextStyle(fontSize: 26,
                color: Colors.black
              ),),
              subtitle: Text(note.subTitle,
                style: TextStyle(fontSize: 20,
                    color: Colors.black.withOpacity(.3)
                ), ),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete),
              iconSize: 30,
              color: Colors.black,)
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(.3)
                ),),
            )
          ],
        ),
      ),
    );
  }
}
