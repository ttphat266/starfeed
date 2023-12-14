import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_ten_screen/models/login_ten_model.dart';
part 'login_ten_event.dart';
part 'login_ten_state.dart';

/// A bloc that manages the state of a LoginTen according to the event that is dispatched to it.
class LoginTenBloc extends Bloc<LoginTenEvent, LoginTenState> {
  LoginTenBloc(LoginTenState initialState) : super(initialState) {
    on<LoginTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginTenInitialEvent event,
    Emitter<LoginTenState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
