// ignore_for_file: must_be_immutable

part of 'login_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginSevenEvent extends Equatable {}

/// Event that is dispatched when the LoginSeven widget is first created.
class LoginSevenInitialEvent extends LoginSevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginSevenEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
