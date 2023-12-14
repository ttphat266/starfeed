import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/sign_up_screen_one_screen/models/sign_up_screen_one_model.dart';
part 'sign_up_screen_one_event.dart';
part 'sign_up_screen_one_state.dart';

/// A bloc that manages the state of a SignUpScreenOne according to the event that is dispatched to it.
class SignUpScreenOneBloc
    extends Bloc<SignUpScreenOneEvent, SignUpScreenOneState> {
  SignUpScreenOneBloc(SignUpScreenOneState initialState) : super(initialState) {
    on<SignUpScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpScreenOneInitialEvent event,
    Emitter<SignUpScreenOneState> emit,
  ) async {}
}
