part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

class NotesFaliuer extends NotesState {
  final String errMessage;

  NotesFaliuer({required this.errMessage});
}
