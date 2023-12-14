// ignore_for_file: must_be_immutable

part of 'inbox_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxFourEvent extends Equatable {}

/// Event that is dispatched when the InboxFour widget is first created.
class InboxFourInitialEvent extends InboxFourEvent {
  @override
  List<Object?> get props => [];
}
