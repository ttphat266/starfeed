import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_four_page/models/login_four_model.dart';
part 'login_four_event.dart';
part 'login_four_state.dart';

/// A bloc that manages the state of a LoginFour according to the event that is dispatched to it.
class LoginFourBloc extends Bloc<LoginFourEvent, LoginFourState> {
  LoginFourBloc(LoginFourState initialState) : super(initialState) {
    on<LoginFourInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginFourState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    LoginFourInitialEvent event,
    Emitter<LoginFourState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
