// ignore_for_file: must_be_immutable

part of 'my_jobs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsEvent extends Equatable {}

/// Event that is dispatched when the MyJobs widget is first created.
class MyJobsInitialEvent extends MyJobsEvent {
  @override
  List<Object?> get props => [];
}
