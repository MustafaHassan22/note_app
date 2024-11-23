import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_note_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteViewBody();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 25, bottom: 25, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.subTitle,
                  style: const TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(size: 30, Icons.delete, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 38),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
