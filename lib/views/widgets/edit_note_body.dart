import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edite',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          Material(
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'title',
                  onChanged: (value) {
                    title = value;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  hintText: 'content',
                  maxLine: 5,
                  onChanged: (value) {
                    content = value;
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
