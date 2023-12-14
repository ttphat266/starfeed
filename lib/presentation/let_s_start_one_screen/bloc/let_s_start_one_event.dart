// ignore_for_file: must_be_immutable

part of 'let_s_start_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LetSStartOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LetSStartOneEvent extends Equatable {}

/// Event that is dispatched when the LetSStartOne widget is first created.
class LetSStartOneInitialEvent extends LetSStartOneEvent {
  @override
  List<Object?> get props => [];
}
