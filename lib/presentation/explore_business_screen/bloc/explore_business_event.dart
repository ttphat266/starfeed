// ignore_for_file: must_be_immutable

part of 'explore_business_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreBusiness widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreBusinessEvent extends Equatable {}

/// Event that is dispatched when the ExploreBusiness widget is first created.
class ExploreBusinessInitialEvent extends ExploreBusinessEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends ExploreBusinessEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
