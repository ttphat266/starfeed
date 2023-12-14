import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/register_one_screen/models/register_one_model.dart';
part 'register_one_event.dart';
part 'register_one_state.dart';

/// A bloc that manages the state of a RegisterOne according to the event that is dispatched to it.
class RegisterOneBloc extends Bloc<RegisterOneEvent, RegisterOneState> {
  RegisterOneBloc(RegisterOneState initialState) : super(initialState) {
    on<RegisterOneInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<RegisterOneState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<RegisterOneState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<RegisterOneState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  List<String> fillRadioList() {
    return ["lbl_influencer", "lbl_business"];
  }

  _onInitialize(
    RegisterOneInitialEvent event,
    Emitter<RegisterOneState> emit,
  ) async {
    emit(state.copyWith(
      userNameFieldController: TextEditingController(),
      phoneFieldController: TextEditingController(),
      passwordFieldController: TextEditingController(),
      confirmPasswordFieldController: TextEditingController(),
      radioGroup: "",
      isShowPassword: true,
      isShowPassword1: true,
    ));
    emit(state.copyWith(
        registerOneModelObj: state.registerOneModelObj?.copyWith(
      radioList: fillRadioList(),
    )));
  }
}
