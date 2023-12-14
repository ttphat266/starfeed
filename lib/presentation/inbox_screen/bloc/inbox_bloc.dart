import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/inbox_screen/models/inbox_model.dart';
part 'inbox_event.dart';
part 'inbox_state.dart';

/// A bloc that manages the state of a Inbox according to the event that is dispatched to it.
class InboxBloc extends Bloc<InboxEvent, InboxState> {
  InboxBloc(InboxState initialState) : super(initialState) {
    on<InboxInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InboxInitialEvent event,
    Emitter<InboxState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
      timeController: TextEditingController(),
    ));
  }
}
