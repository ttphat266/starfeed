// ignore_for_file: must_be_immutable

part of 'my_profile_influencer_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyProfileInfluencerOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyProfileInfluencerOneEvent extends Equatable {}

/// Event that is dispatched when the MyProfileInfluencerOne widget is first created.
class MyProfileInfluencerOneInitialEvent extends MyProfileInfluencerOneEvent {
  @override
  List<Object?> get props => [];
}
