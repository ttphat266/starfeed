// ignore_for_file: must_be_immutable

part of 'login_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginFourEvent extends Equatable {}

/// Event that is dispatched when the LoginFour widget is first created.
class LoginFourInitialEvent extends LoginFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginFourEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
