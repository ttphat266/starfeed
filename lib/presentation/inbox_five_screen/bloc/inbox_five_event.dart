// ignore_for_file: must_be_immutable

part of 'inbox_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxFiveEvent extends Equatable {}

/// Event that is dispatched when the InboxFive widget is first created.
class InboxFiveInitialEvent extends InboxFiveEvent {
  @override
  List<Object?> get props => [];
}
