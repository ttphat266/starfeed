import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/inbox_five_screen/models/inbox_five_model.dart';
part 'inbox_five_event.dart';
part 'inbox_five_state.dart';

/// A bloc that manages the state of a InboxFive according to the event that is dispatched to it.
class InboxFiveBloc extends Bloc<InboxFiveEvent, InboxFiveState> {
  InboxFiveBloc(InboxFiveState initialState) : super(initialState) {
    on<InboxFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InboxFiveInitialEvent event,
    Emitter<InboxFiveState> emit,
  ) async {
    emit(state.copyWith(
      messageEditTextController: TextEditingController(),
      timeEditTextController: TextEditingController(),
    ));
  }
}
