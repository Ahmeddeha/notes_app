import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/widgets/constant.dart';
import 'package:note_app/widgets/note_bottom_sheet.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: KprimaryColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
