// ignore_for_file: must_be_immutable

part of 'my_jobs_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsFourEvent extends Equatable {}

/// Event that is dispatched when the MyJobsFour widget is first created.
class MyJobsFourInitialEvent extends MyJobsFourEvent {
  @override
  List<Object?> get props => [];
}
