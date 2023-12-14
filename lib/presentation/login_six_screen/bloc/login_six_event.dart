// ignore_for_file: must_be_immutable

part of 'login_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginSixEvent extends Equatable {}

/// Event that is dispatched when the LoginSix widget is first created.
class LoginSixInitialEvent extends LoginSixEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends LoginSixEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
