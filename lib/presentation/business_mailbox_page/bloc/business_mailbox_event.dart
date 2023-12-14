// ignore_for_file: must_be_immutable

part of 'business_mailbox_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BusinessMailbox widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BusinessMailboxEvent extends Equatable {}

/// Event that is dispatched when the BusinessMailbox widget is first created.
class BusinessMailboxInitialEvent extends BusinessMailboxEvent {
  @override
  List<Object?> get props => [];
}
