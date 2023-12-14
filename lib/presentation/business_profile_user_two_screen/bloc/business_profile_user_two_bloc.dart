import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/business_profile_user_two_screen/models/business_profile_user_two_model.dart';
part 'business_profile_user_two_event.dart';
part 'business_profile_user_two_state.dart';

/// A bloc that manages the state of a BusinessProfileUserTwo according to the event that is dispatched to it.
class BusinessProfileUserTwoBloc
    extends Bloc<BusinessProfileUserTwoEvent, BusinessProfileUserTwoState> {
  BusinessProfileUserTwoBloc(BusinessProfileUserTwoState initialState)
      : super(initialState) {
    on<BusinessProfileUserTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BusinessProfileUserTwoInitialEvent event,
    Emitter<BusinessProfileUserTwoState> emit,
  ) async {}
}
