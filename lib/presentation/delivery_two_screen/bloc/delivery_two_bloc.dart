import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:phat_s_application1/presentation/delivery_two_screen/models/delivery_two_model.dart';part 'delivery_two_event.dart';part 'delivery_two_state.dart';/// A bloc that manages the state of a DeliveryTwo according to the event that is dispatched to it.
class DeliveryTwoBloc extends Bloc<DeliveryTwoEvent, DeliveryTwoState> {DeliveryTwoBloc(DeliveryTwoState initialState) : super(initialState) { on<DeliveryTwoInitialEvent>(_onInitialize); }

_onInitialize(DeliveryTwoInitialEvent event, Emitter<DeliveryTwoState> emit, ) async  {  } 
 }
