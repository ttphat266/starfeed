import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/inbox_three_screen/models/inbox_three_model.dart';
part 'inbox_three_event.dart';
part 'inbox_three_state.dart';

/// A bloc that manages the state of a InboxThree according to the event that is dispatched to it.
class InboxThreeBloc extends Bloc<InboxThreeEvent, InboxThreeState> {
  InboxThreeBloc(InboxThreeState initialState) : super(initialState) {
    on<InboxThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InboxThreeInitialEvent event,
    Emitter<InboxThreeState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
      morningMessageController: TextEditingController(),
    ));
  }
}
