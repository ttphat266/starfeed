// ignore_for_file: must_be_immutable

part of 'my_jobs_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsOneEvent extends Equatable {}

/// Event that is dispatched when the MyJobsOne widget is first created.
class MyJobsOneInitialEvent extends MyJobsOneEvent {
  @override
  List<Object?> get props => [];
}
