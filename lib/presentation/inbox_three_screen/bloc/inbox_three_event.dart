// ignore_for_file: must_be_immutable

part of 'inbox_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InboxThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InboxThreeEvent extends Equatable {}

/// Event that is dispatched when the InboxThree widget is first created.
class InboxThreeInitialEvent extends InboxThreeEvent {
  @override
  List<Object?> get props => [];
}
