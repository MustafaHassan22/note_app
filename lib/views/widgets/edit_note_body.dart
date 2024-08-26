import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Edite', icon: Icons.check),
          SizedBox(
            height: 20,
          ),
          Material(
            child: Column(
              children: [
                CustomTextField(hintText: 'title'),
                SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  hintText: 'content',
                  maxLine: 5,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
