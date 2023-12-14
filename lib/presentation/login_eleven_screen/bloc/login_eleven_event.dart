// ignore_for_file: must_be_immutable

part of 'login_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginElevenEvent extends Equatable {}

/// Event that is dispatched when the LoginEleven widget is first created.
class LoginElevenInitialEvent extends LoginElevenEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends LoginElevenEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
