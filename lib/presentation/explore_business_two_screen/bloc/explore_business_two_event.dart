// ignore_for_file: must_be_immutable

part of 'explore_business_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreBusinessTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreBusinessTwoEvent extends Equatable {}

/// Event that is dispatched when the ExploreBusinessTwo widget is first created.
class ExploreBusinessTwoInitialEvent extends ExploreBusinessTwoEvent {
  @override
  List<Object?> get props => [];
}
