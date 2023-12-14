import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/login_one_tab_container_screen/models/login_one_tab_container_model.dart';
part 'login_one_tab_container_event.dart';
part 'login_one_tab_container_state.dart';

/// A bloc that manages the state of a LoginOneTabContainer according to the event that is dispatched to it.
class LoginOneTabContainerBloc
    extends Bloc<LoginOneTabContainerEvent, LoginOneTabContainerState> {
  LoginOneTabContainerBloc(LoginOneTabContainerState initialState)
      : super(initialState) {
    on<LoginOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginOneTabContainerInitialEvent event,
    Emitter<LoginOneTabContainerState> emit,
  ) async {}
}
