// ignore_for_file: must_be_immutable

part of 'login_two_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginTwoTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginTwoTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LoginTwoTabContainer widget is first created.
class LoginTwoTabContainerInitialEvent extends LoginTwoTabContainerEvent {
  @override
  List<Object?> get props => [];
}
