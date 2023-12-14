import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_seven_page/models/login_seven_model.dart';
part 'login_seven_event.dart';
part 'login_seven_state.dart';

/// A bloc that manages the state of a LoginSeven according to the event that is dispatched to it.
class LoginSevenBloc extends Bloc<LoginSevenEvent, LoginSevenState> {
  LoginSevenBloc(LoginSevenState initialState) : super(initialState) {
    on<LoginSevenInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LoginSevenState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    LoginSevenInitialEvent event,
    Emitter<LoginSevenState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
