// ignore_for_file: must_be_immutable

part of 'my_jobs_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsFiveEvent extends Equatable {}

/// Event that is dispatched when the MyJobsFive widget is first created.
class MyJobsFiveInitialEvent extends MyJobsFiveEvent {
  @override
  List<Object?> get props => [];
}
