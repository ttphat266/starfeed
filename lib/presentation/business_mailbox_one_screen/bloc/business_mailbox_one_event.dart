// ignore_for_file: must_be_immutable

part of 'business_mailbox_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BusinessMailboxOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BusinessMailboxOneEvent extends Equatable {}

/// Event that is dispatched when the BusinessMailboxOne widget is first created.
class BusinessMailboxOneInitialEvent extends BusinessMailboxOneEvent {
  @override
  List<Object?> get props => [];
}
