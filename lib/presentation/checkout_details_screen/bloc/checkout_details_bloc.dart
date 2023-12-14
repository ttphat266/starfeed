import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/checkout_details_screen/models/checkout_details_model.dart';
part 'checkout_details_event.dart';
part 'checkout_details_state.dart';

/// A bloc that manages the state of a CheckoutDetails according to the event that is dispatched to it.
class CheckoutDetailsBloc
    extends Bloc<CheckoutDetailsEvent, CheckoutDetailsState> {
  CheckoutDetailsBloc(CheckoutDetailsState initialState) : super(initialState) {
    on<CheckoutDetailsInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CheckoutDetailsState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    CheckoutDetailsInitialEvent event,
    Emitter<CheckoutDetailsState> emit,
  ) async {
    emit(state.copyWith(
      fromDateEditTextController: TextEditingController(),
      toDateEditTextController: TextEditingController(),
      postByEditTextController: TextEditingController(),
      instructionsEditTextController: TextEditingController(),
      radioGroup: "",
    ));
  }
}
