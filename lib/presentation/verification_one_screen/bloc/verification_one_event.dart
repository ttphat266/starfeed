// ignore_for_file: must_be_immutable

part of 'verification_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerificationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerificationOneEvent extends Equatable {}

/// Event that is dispatched when the VerificationOne widget is first created.
class VerificationOneInitialEvent extends VerificationOneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
