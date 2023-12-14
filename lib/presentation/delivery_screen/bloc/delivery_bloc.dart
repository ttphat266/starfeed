import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/delivery_screen/models/delivery_model.dart';
part 'delivery_event.dart';
part 'delivery_state.dart';

/// A bloc that manages the state of a Delivery according to the event that is dispatched to it.
class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  DeliveryBloc(DeliveryState initialState) : super(initialState) {
    on<DeliveryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DeliveryInitialEvent event,
    Emitter<DeliveryState> emit,
  ) async {}
}
