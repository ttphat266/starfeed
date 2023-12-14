import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_eleven_screen/models/login_eleven_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'login_eleven_event.dart';
part 'login_eleven_state.dart';

/// A bloc that manages the state of a LoginEleven according to the event that is dispatched to it.
class LoginElevenBloc extends Bloc<LoginElevenEvent, LoginElevenState>
    with CodeAutoFill {
  LoginElevenBloc(LoginElevenState initialState) : super(initialState) {
    on<LoginElevenInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<LoginElevenState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    LoginElevenInitialEvent event,
    Emitter<LoginElevenState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
