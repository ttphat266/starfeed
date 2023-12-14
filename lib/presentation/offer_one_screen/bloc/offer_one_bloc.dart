import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/offer_one_screen/models/offer_one_model.dart';
part 'offer_one_event.dart';
part 'offer_one_state.dart';

/// A bloc that manages the state of a OfferOne according to the event that is dispatched to it.
class OfferOneBloc extends Bloc<OfferOneEvent, OfferOneState> {
  OfferOneBloc(OfferOneState initialState) : super(initialState) {
    on<OfferOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OfferOneInitialEvent event,
    Emitter<OfferOneState> emit,
  ) async {
    emit(state.copyWith(
      editTextController: TextEditingController(),
      videoValueEditTextController: TextEditingController(),
      storyPostValueEditTextController: TextEditingController(),
      editTextController1: TextEditingController(),
      editTextController2: TextEditingController(),
    ));
  }
}
