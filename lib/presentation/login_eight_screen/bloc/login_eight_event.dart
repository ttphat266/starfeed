// ignore_for_file: must_be_immutable

part of 'login_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginEightEvent extends Equatable {}

/// Event that is dispatched when the LoginEight widget is first created.
class LoginEightInitialEvent extends LoginEightEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends LoginEightEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
