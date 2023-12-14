// ignore_for_file: must_be_immutable

part of 'business_mailbox_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BusinessMailboxTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BusinessMailboxTabContainerEvent extends Equatable {}

/// Event that is dispatched when the BusinessMailboxTabContainer widget is first created.
class BusinessMailboxTabContainerInitialEvent
    extends BusinessMailboxTabContainerEvent {
  @override
  List<Object?> get props => [];
}
