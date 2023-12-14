import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/verification_screen/models/verification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verification_event.dart';
part 'verification_state.dart';

/// A bloc that manages the state of a Verification according to the event that is dispatched to it.
class VerificationBloc extends Bloc<VerificationEvent, VerificationState>
    with CodeAutoFill {
  VerificationBloc(VerificationState initialState) : super(initialState) {
    on<VerificationInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VerificationState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    VerificationInitialEvent event,
    Emitter<VerificationState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
