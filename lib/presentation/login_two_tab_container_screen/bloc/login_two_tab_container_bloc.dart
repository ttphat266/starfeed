import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_two_tab_container_screen/models/login_two_tab_container_model.dart';
part 'login_two_tab_container_event.dart';
part 'login_two_tab_container_state.dart';

/// A bloc that manages the state of a LoginTwoTabContainer according to the event that is dispatched to it.
class LoginTwoTabContainerBloc
    extends Bloc<LoginTwoTabContainerEvent, LoginTwoTabContainerState> {
  LoginTwoTabContainerBloc(LoginTwoTabContainerState initialState)
      : super(initialState) {
    on<LoginTwoTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginTwoTabContainerInitialEvent event,
    Emitter<LoginTwoTabContainerState> emit,
  ) async {}
}
