// ignore_for_file: must_be_immutable

part of 'influencer_mailbox_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InfluencerMailbox widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InfluencerMailboxEvent extends Equatable {}

/// Event that is dispatched when the InfluencerMailbox widget is first created.
class InfluencerMailboxInitialEvent extends InfluencerMailboxEvent {
  @override
  List<Object?> get props => [];
}
