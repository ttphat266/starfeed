import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/payment_two_screen/models/payment_two_model.dart';
part 'payment_two_event.dart';
part 'payment_two_state.dart';

/// A bloc that manages the state of a PaymentTwo according to the event that is dispatched to it.
class PaymentTwoBloc extends Bloc<PaymentTwoEvent, PaymentTwoState> {
  PaymentTwoBloc(PaymentTwoState initialState) : super(initialState) {
    on<PaymentTwoInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<PaymentTwoState> emit,
  ) {
    emit(state.copyWith(
      saveCardDetailsCheckbox: event.value,
    ));
  }

  _onInitialize(
    PaymentTwoInitialEvent event,
    Emitter<PaymentTwoState> emit,
  ) async {
    emit(state.copyWith(
      expirydateController: TextEditingController(),
      cvvController: TextEditingController(),
      saveCardDetailsCheckbox: false,
    ));
  }
}
