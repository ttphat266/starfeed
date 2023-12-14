import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_six_screen/models/login_six_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'login_six_event.dart';
part 'login_six_state.dart';

/// A bloc that manages the state of a LoginSix according to the event that is dispatched to it.
class LoginSixBloc extends Bloc<LoginSixEvent, LoginSixState>
    with CodeAutoFill {
  LoginSixBloc(LoginSixState initialState) : super(initialState) {
    on<LoginSixInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<LoginSixState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    LoginSixInitialEvent event,
    Emitter<LoginSixState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
