import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_five_screen/models/login_five_model.dart';
part 'login_five_event.dart';
part 'login_five_state.dart';

/// A bloc that manages the state of a LoginFive according to the event that is dispatched to it.
class LoginFiveBloc extends Bloc<LoginFiveEvent, LoginFiveState> {
  LoginFiveBloc(LoginFiveState initialState) : super(initialState) {
    on<LoginFiveInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginFiveState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<LoginFiveState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    LoginFiveInitialEvent event,
    Emitter<LoginFiveState> emit,
  ) async {
    emit(state.copyWith(
      newpasswordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
