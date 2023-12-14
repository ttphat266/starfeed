// ignore_for_file: must_be_immutable

part of 'my_profile_influencer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyProfileInfluencer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyProfileInfluencerEvent extends Equatable {}

/// Event that is dispatched when the MyProfileInfluencer widget is first created.
class MyProfileInfluencerInitialEvent extends MyProfileInfluencerEvent {
  @override
  List<Object?> get props => [];
}
