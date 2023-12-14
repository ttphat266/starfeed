// ignore_for_file: must_be_immutable

part of 'inbox_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Inbox widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxEvent extends Equatable {}

/// Event that is dispatched when the Inbox widget is first created.
class InboxInitialEvent extends InboxEvent {
  @override
  List<Object?> get props => [];
}
