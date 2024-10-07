part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class NotesIntial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFaliuer extends AddNoteState {
  final String errMessage;

  AddNoteFaliuer({required this.errMessage});
}
