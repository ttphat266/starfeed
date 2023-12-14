import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/payment_four_screen/models/payment_four_model.dart';
part 'payment_four_event.dart';
part 'payment_four_state.dart';

/// A bloc that manages the state of a PaymentFour according to the event that is dispatched to it.
class PaymentFourBloc extends Bloc<PaymentFourEvent, PaymentFourState> {
  PaymentFourBloc(PaymentFourState initialState) : super(initialState) {
    on<PaymentFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentFourInitialEvent event,
    Emitter<PaymentFourState> emit,
  ) async {}
}
