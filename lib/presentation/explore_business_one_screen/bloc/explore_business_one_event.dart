// ignore_for_file: must_be_immutable

part of 'explore_business_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreBusinessOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreBusinessOneEvent extends Equatable {}

/// Event that is dispatched when the ExploreBusinessOne widget is first created.
class ExploreBusinessOneInitialEvent extends ExploreBusinessOneEvent {
  @override
  List<Object?> get props => [];
}
