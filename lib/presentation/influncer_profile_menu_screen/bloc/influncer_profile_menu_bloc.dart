import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/influncer_profile_menu_screen/models/influncer_profile_menu_model.dart';
part 'influncer_profile_menu_event.dart';
part 'influncer_profile_menu_state.dart';

/// A bloc that manages the state of a InfluncerProfileMenu according to the event that is dispatched to it.
class InfluncerProfileMenuBloc
    extends Bloc<InfluncerProfileMenuEvent, InfluncerProfileMenuState> {
  InfluncerProfileMenuBloc(InfluncerProfileMenuState initialState)
      : super(initialState) {
    on<InfluncerProfileMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InfluncerProfileMenuInitialEvent event,
    Emitter<InfluncerProfileMenuState> emit,
  ) async {}
}
