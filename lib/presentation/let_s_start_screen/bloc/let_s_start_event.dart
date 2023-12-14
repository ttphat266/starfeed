// ignore_for_file: must_be_immutable

part of 'let_s_start_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LetSStart widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LetSStartEvent extends Equatable {}

/// Event that is dispatched when the LetSStart widget is first created.
class LetSStartInitialEvent extends LetSStartEvent {
  @override
  List<Object?> get props => [];
}
