// ignore_for_file: must_be_immutable

part of 'edit_profile_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditProfileOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditProfileOneEvent extends Equatable {}

/// Event that is dispatched when the EditProfileOne widget is first created.
class EditProfileOneInitialEvent extends EditProfileOneEvent {
  @override
  List<Object?> get props => [];
}
