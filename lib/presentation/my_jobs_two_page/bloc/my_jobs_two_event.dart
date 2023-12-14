// ignore_for_file: must_be_immutable

part of 'my_jobs_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsTwoEvent extends Equatable {}

/// Event that is dispatched when the MyJobsTwo widget is first created.
class MyJobsTwoInitialEvent extends MyJobsTwoEvent {
  @override
  List<Object?> get props => [];
}
