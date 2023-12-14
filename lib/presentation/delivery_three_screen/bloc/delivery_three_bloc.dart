import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:phat_s_application1/presentation/delivery_three_screen/models/delivery_three_model.dart';part 'delivery_three_event.dart';part 'delivery_three_state.dart';/// A bloc that manages the state of a DeliveryThree according to the event that is dispatched to it.
class DeliveryThreeBloc extends Bloc<DeliveryThreeEvent, DeliveryThreeState> {DeliveryThreeBloc(DeliveryThreeState initialState) : super(initialState) { on<DeliveryThreeInitialEvent>(_onInitialize); }

_onInitialize(DeliveryThreeInitialEvent event, Emitter<DeliveryThreeState> emit, ) async  {  } 
 }
