// ignore_for_file: must_be_immutable

part of 'login_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LoginOneTabContainer widget is first created.
class LoginOneTabContainerInitialEvent extends LoginOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
