import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/confirm_order_screen/models/confirm_order_model.dart';
part 'confirm_order_event.dart';
part 'confirm_order_state.dart';

/// A bloc that manages the state of a ConfirmOrder according to the event that is dispatched to it.
class ConfirmOrderBloc extends Bloc<ConfirmOrderEvent, ConfirmOrderState> {
  ConfirmOrderBloc(ConfirmOrderState initialState) : super(initialState) {
    on<ConfirmOrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfirmOrderInitialEvent event,
    Emitter<ConfirmOrderState> emit,
  ) async {}
}
