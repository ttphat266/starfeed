// ignore_for_file: must_be_immutable

part of 'influencer_mailbox_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InfluencerMailboxOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InfluencerMailboxOneEvent extends Equatable {}

/// Event that is dispatched when the InfluencerMailboxOne widget is first created.
class InfluencerMailboxOneInitialEvent extends InfluencerMailboxOneEvent {
  @override
  List<Object?> get props => [];
}
