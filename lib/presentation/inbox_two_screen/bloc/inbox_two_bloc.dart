import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/inbox_two_screen/models/inbox_two_model.dart';
part 'inbox_two_event.dart';
part 'inbox_two_state.dart';

/// A bloc that manages the state of a InboxTwo according to the event that is dispatched to it.
class InboxTwoBloc extends Bloc<InboxTwoEvent, InboxTwoState> {
  InboxTwoBloc(InboxTwoState initialState) : super(initialState) {
    on<InboxTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InboxTwoInitialEvent event,
    Emitter<InboxTwoState> emit,
  ) async {}
}
