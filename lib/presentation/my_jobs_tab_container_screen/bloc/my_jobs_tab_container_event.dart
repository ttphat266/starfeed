// ignore_for_file: must_be_immutable

part of 'my_jobs_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJobsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJobsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MyJobsTabContainer widget is first created.
class MyJobsTabContainerInitialEvent extends MyJobsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
