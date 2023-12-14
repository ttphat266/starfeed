// ignore_for_file: must_be_immutable

part of 'my_jobs_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsSixEvent extends Equatable {}

/// Event that is dispatched when the MyJobsSix widget is first created.
class MyJobsSixInitialEvent extends MyJobsSixEvent {
  @override
  List<Object?> get props => [];
}
