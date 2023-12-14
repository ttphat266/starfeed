// ignore_for_file: must_be_immutable

part of 'my_jobs_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsEightEvent extends Equatable {}

/// Event that is dispatched when the MyJobsEight widget is first created.
class MyJobsEightInitialEvent extends MyJobsEightEvent {
  @override
  List<Object?> get props => [];
}
