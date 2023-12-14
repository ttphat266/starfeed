// ignore_for_file: must_be_immutable

part of 'verification_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Verification widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerificationEvent extends Equatable {}

/// Event that is dispatched when the Verification widget is first created.
class VerificationInitialEvent extends VerificationEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
