// ignore_for_file: must_be_immutable

part of 'inbox_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxTwoEvent extends Equatable {}

/// Event that is dispatched when the InboxTwo widget is first created.
class InboxTwoInitialEvent extends InboxTwoEvent {
  @override
  List<Object?> get props => [];
}
