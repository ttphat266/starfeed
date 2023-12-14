// ignore_for_file: must_be_immutable

part of 'explore_influencer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreInfluencer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreInfluencerEvent extends Equatable {}

/// Event that is dispatched when the ExploreInfluencer widget is first created.
class ExploreInfluencerInitialEvent extends ExploreInfluencerEvent {
  @override
  List<Object?> get props => [];
}
