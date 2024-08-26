import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteViewBody();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 25, bottom: 25, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'build your career with me bitch',
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(size: 30, Icons.delete, color: Colors.black)),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 38),
              child: Text(
                'May22: 2024',
                style: TextStyle(
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
