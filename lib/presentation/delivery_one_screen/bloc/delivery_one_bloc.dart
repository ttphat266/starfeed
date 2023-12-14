import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/delivery_one_screen/models/delivery_one_model.dart';
part 'delivery_one_event.dart';
part 'delivery_one_state.dart';

/// A bloc that manages the state of a DeliveryOne according to the event that is dispatched to it.
class DeliveryOneBloc extends Bloc<DeliveryOneEvent, DeliveryOneState> {
  DeliveryOneBloc(DeliveryOneState initialState) : super(initialState) {
    on<DeliveryOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DeliveryOneInitialEvent event,
    Emitter<DeliveryOneState> emit,
  ) async {}
}
