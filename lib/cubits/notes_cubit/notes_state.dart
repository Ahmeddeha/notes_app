part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {
  final List<NoteModel> notes;

  AddNoteSuccess({required this.notes});
}

class AddNoteFaliuer extends NotesState {
  final String errMessage;

  AddNoteFaliuer({required this.errMessage});
}
