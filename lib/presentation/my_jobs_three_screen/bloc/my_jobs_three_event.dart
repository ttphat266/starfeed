// ignore_for_file: must_be_immutable

part of 'my_jobs_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsThreeEvent extends Equatable {}

/// Event that is dispatched when the MyJobsThree widget is first created.
class MyJobsThreeInitialEvent extends MyJobsThreeEvent {
  @override
  List<Object?> get props => [];
}
