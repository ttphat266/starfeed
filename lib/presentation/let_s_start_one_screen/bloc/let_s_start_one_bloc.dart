import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:phat_s_application1/presentation/let_s_start_one_screen/models/let_s_start_one_model.dart';
part 'let_s_start_one_event.dart';
part 'let_s_start_one_state.dart';

/// A bloc that manages the state of a LetSStartOne according to the event that is dispatched to it.
class LetSStartOneBloc extends Bloc<LetSStartOneEvent, LetSStartOneState> {
  LetSStartOneBloc(LetSStartOneState initialState) : super(initialState) {
    on<LetSStartOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LetSStartOneInitialEvent event,
    Emitter<LetSStartOneState> emit,
  ) async {}
}
