// ignore_for_file: must_be_immutable

part of 'inbox_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxOneEvent extends Equatable {}

/// Event that is dispatched when the InboxOne widget is first created.
class InboxOneInitialEvent extends InboxOneEvent {
  @override
  List<Object?> get props => [];
}
