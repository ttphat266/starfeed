import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/payment_three_screen/models/payment_three_model.dart';
part 'payment_three_event.dart';
part 'payment_three_state.dart';

/// A bloc that manages the state of a PaymentThree according to the event that is dispatched to it.
class PaymentThreeBloc extends Bloc<PaymentThreeEvent, PaymentThreeState> {
  PaymentThreeBloc(PaymentThreeState initialState) : super(initialState) {
    on<PaymentThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentThreeInitialEvent event,
    Emitter<PaymentThreeState> emit,
  ) async {}
}
