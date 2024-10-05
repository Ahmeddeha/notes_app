import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(),
      ],
    );
  }
}
