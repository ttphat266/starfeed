// ignore_for_file: must_be_immutable

part of 'edit_profile_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditProfileThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditProfileThreeEvent extends Equatable {}

/// Event that is dispatched when the EditProfileThree widget is first created.
class EditProfileThreeInitialEvent extends EditProfileThreeEvent {
  @override
  List<Object?> get props => [];
}
