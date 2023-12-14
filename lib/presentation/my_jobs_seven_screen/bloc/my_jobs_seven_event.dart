// ignore_for_file: must_be_immutable

part of 'my_jobs_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsSevenEvent extends Equatable {}

/// Event that is dispatched when the MyJobsSeven widget is first created.
class MyJobsSevenInitialEvent extends MyJobsSevenEvent {
  @override
  List<Object?> get props => [];
}
