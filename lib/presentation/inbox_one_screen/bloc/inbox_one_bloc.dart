import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/inbox_one_screen/models/inbox_one_model.dart';
part 'inbox_one_event.dart';
part 'inbox_one_state.dart';

/// A bloc that manages the state of a InboxOne according to the event that is dispatched to it.
class InboxOneBloc extends Bloc<InboxOneEvent, InboxOneState> {
  InboxOneBloc(InboxOneState initialState) : super(initialState) {
    on<InboxOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InboxOneInitialEvent event,
    Emitter<InboxOneState> emit,
  ) async {}
}
