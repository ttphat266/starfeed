// ignore_for_file: must_be_immutable

part of 'login_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginNineEvent extends Equatable {}

/// Event that is dispatched when the LoginNine widget is first created.
class LoginNineInitialEvent extends LoginNineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginNineEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends LoginNineEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
