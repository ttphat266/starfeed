import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_eight_screen/models/login_eight_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'login_eight_event.dart';
part 'login_eight_state.dart';

/// A bloc that manages the state of a LoginEight according to the event that is dispatched to it.
class LoginEightBloc extends Bloc<LoginEightEvent, LoginEightState>
    with CodeAutoFill {
  LoginEightBloc(LoginEightState initialState) : super(initialState) {
    on<LoginEightInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<LoginEightState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    LoginEightInitialEvent event,
    Emitter<LoginEightState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
