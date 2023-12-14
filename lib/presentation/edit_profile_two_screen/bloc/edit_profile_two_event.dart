// ignore_for_file: must_be_immutable

part of 'edit_profile_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EditProfileTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditProfileTwoEvent extends Equatable {}

/// Event that is dispatched when the EditProfileTwo widget is first created.
class EditProfileTwoInitialEvent extends EditProfileTwoEvent {
  @override
  List<Object?> get props => [];
}
