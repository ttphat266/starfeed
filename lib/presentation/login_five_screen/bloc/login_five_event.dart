// ignore_for_file: must_be_immutable

part of 'login_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginFiveEvent extends Equatable {}

/// Event that is dispatched when the LoginFive widget is first created.
class LoginFiveInitialEvent extends LoginFiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginFiveEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends LoginFiveEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
