import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/inbox_four_screen/models/inbox_four_model.dart';
part 'inbox_four_event.dart';
part 'inbox_four_state.dart';

/// A bloc that manages the state of a InboxFour according to the event that is dispatched to it.
class InboxFourBloc extends Bloc<InboxFourEvent, InboxFourState> {
  InboxFourBloc(InboxFourState initialState) : super(initialState) {
    on<InboxFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InboxFourInitialEvent event,
    Emitter<InboxFourState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
      morningGreetingController: TextEditingController(),
    ));
  }
}
