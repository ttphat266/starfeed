import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/verification_one_screen/models/verification_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verification_one_event.dart';
part 'verification_one_state.dart';

/// A bloc that manages the state of a VerificationOne according to the event that is dispatched to it.
class VerificationOneBloc
    extends Bloc<VerificationOneEvent, VerificationOneState> with CodeAutoFill {
  VerificationOneBloc(VerificationOneState initialState) : super(initialState) {
    on<VerificationOneInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VerificationOneState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    VerificationOneInitialEvent event,
    Emitter<VerificationOneState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
