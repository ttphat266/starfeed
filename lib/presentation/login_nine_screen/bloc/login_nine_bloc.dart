import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_nine_screen/models/login_nine_model.dart';
part 'login_nine_event.dart';
part 'login_nine_state.dart';

/// A bloc that manages the state of a LoginNine according to the event that is dispatched to it.
class LoginNineBloc extends Bloc<LoginNineEvent, LoginNineState> {
  LoginNineBloc(LoginNineState initialState) : super(initialState) {
    on<LoginNineInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginNineState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<LoginNineState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    LoginNineInitialEvent event,
    Emitter<LoginNineState> emit,
  ) async {
    emit(state.copyWith(
      newpasswordController: TextEditingController(),
      confirmpasswordController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
